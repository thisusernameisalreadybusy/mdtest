cmake_minimum_required(VERSION 3.20 FATAL_ERROR)

project(notes LANGUAGES swift)

set(SOURCES
    App.swift
)

add_executable(notes ${SOURCES})
