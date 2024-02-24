cmake_minimum_required(VERSION 3.20 FATAL_ERROR)

set(SOURCES
    App.swift
)

project(notes)

add_executable(notes ${SOURCES})
