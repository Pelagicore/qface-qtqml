from setuptools import setup, find_packages

setup(
    name='qface-qtqml',
    version='1.1',
    description='Qt QML generator based on the QFace library',
    url='https://github.com/Pelagicore/qface-qtqml',
    author='jryannel',
    author_email='juergen@ryannel.org',
    license='MIT',
    classifiers=[
        'Development Status :: 5 - Production/Stable',
        'Intended Audience :: Developers',
        'Topic :: Software Development :: Code Generators',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python :: 3',
    ],
    keywords='qt code generator framework',
    packages=find_packages(),
    include_package_data=True,
    package_data={
        '': ['*.h', '*.cpp', '*.pro', '*.pri', '*.qml', '*.js', '*.j2', 'qmldir']
    },
    install_requires=[
        'qface',
        'colorlog',
    ],
    entry_points={
        'console_scripts': [
            'qface-qtqml = qtqml.qtqml:app'
        ],
    },
)
