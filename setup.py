from setuptools import setup, find_packages

setup(
    name="flox_consumer_app",
    version="0.1",
    packages=find_packages(),
    entry_points={
        'console_scripts': [
            'flox_consumer_app = flox_consumer_app:hello',
        ],
    }
)
