from faker import Faker

def main():
    fake = Faker()
    print(f"Random Name: {fake.name()}")
    print(f"Random Address: {fake.address()}")
    print(f"Random Company: {fake.company()}")

if __name__ == "__main__":
    main()