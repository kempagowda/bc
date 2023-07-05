from hashlib import sha256

def hashGenerator(text):
    return sha256(text.encode("ascii")).hexdigest()

class Block:
    def __init__(self, data, hash, prev_hash):
        self.data = data
        self.hash = hash
        self.prev_hash = prev_hash

class Blockchain:
    def __init__(self):
        hashLast = hashGenerator('gen_last')
        hashStart = hashGenerator('gen_hash')

        genesis = Block('Genesis Block', hashStart, hashLast)
        self.chain = [genesis]

    def add_block(self, new_block):
        new_block.prev_hash = self.chain[-1].hash
        new_block.hash = hashGenerator(str(new_block.data) + new_block.prev_hash)
        self.chain.append(new_block)

my_coin = Blockchain()
my_coin.add_block(Block({"amount": 72}, "", ""))
my_coin.add_block(Block({"amount": 24}, "", ""))

for block in my_coin.chain:
    print(block.__dict__)
