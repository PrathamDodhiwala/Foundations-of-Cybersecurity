#!/bin/bash
# ============================================================
# Task 1 - Cryptography Basics: OpenSSL Hands-On Exercises
# Run each block one at a time in your Kali terminal.
# Screenshot the command + output for each exercise.
# ============================================================

echo "=== Setup: create a sample file to work with ==="
echo "This is a confidential test file for Task 1 cryptography exercises." > secret.txt
cat secret.txt

# ------------------------------------------------------------
echo ""
echo "=== Exercise 1: Encrypt the file with AES-256 (symmetric) ==="
# You will be prompted to set a password. Remember it for Exercise 2.
openssl enc -aes-256-cbc -salt -pbkdf2 -in secret.txt -out secret.enc
echo "Encrypted file created: secret.enc"
ls -l secret.enc

# ------------------------------------------------------------
echo ""
echo "=== Exercise 2: Decrypt the file back ==="
# Enter the same password you used in Exercise 1.
openssl enc -aes-256-cbc -d -pbkdf2 -in secret.enc -out secret_decrypted.txt
echo "Decrypted content:"
cat secret_decrypted.txt
echo "Compare with original:"
diff secret.txt secret_decrypted.txt && echo "MATCH: decryption successful"

# ------------------------------------------------------------
echo ""
echo "=== Exercise 3: Generate a SHA256 hash of the file ==="
sha256sum secret.txt
# Save the hash for Exercise 4
sha256sum secret.txt > secret.sha256
echo "Hash saved to secret.sha256"

# ------------------------------------------------------------
echo ""
echo "=== Exercise 4: Verify the file against the saved hash ==="
sha256sum -c secret.sha256
# Now tamper with the file and re-verify to see detection in action:
echo "tampered line" >> secret.txt
echo "-- After tampering --"
sha256sum -c secret.sha256
# Expect: FAILED (this proves hashing detects integrity violations)
# Restore original file for record-keeping:
sed -i '$ d' secret.txt

# ------------------------------------------------------------
echo ""
echo "=== Exercise 5: Generate an RSA key pair and inspect it (asymmetric) ==="
openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out private_key.pem
openssl rsa -pubout -in private_key.pem -out public_key.pem
echo "-- Private key (structure only, keep this secret in real use) --"
openssl rsa -in private_key.pem -noout -text | head -20
echo "-- Public key --"
cat public_key.pem

echo ""
echo "=== All 5 exercises complete. Screenshot each section's output. ==="
