# Trivial Technologies: Guidelines

Let us say you are convinced, and you want some further instructions on how to help. This is that document. The first two sections are shorter and speak on how to help without developing brand new TT software. The third primary section will contain guidelines on how to maximally simplify software, in the attempt to be a TT.

## Use TT, Tell Your Friends

Empowering the people has no effect if the people do not use this ability. The truth is that *you* **are** capable of these things. If you are unhappy with the state of things in a given field, try a TT program. If you are still unhappy with it, it will be the easiest option for you to modify to your liking, so try doing that! If you see that your friends are unhappy, tell them about TT as an option. If you know developers, tell them about TT too. If you know people with similar goals to ours, tell them about TT so that they may host their own variation.

## Host Mirrors

TT is itself Trivial. It is not meant to be centralized. This hosted instance, whether it's the original one or not, is too, just a mirror. Your mirror may also contain changes, such that it will fit your needs and your community better. The whole thing is available under the Unlicense, so you needn't worry about anything you do with the idea. Here is the recommended procedure to make a mirror:

1. Copy the sources (whether using git or as plain files).

2. Modify the `_footer.html` file to have *your* contact data, as the maintainer.

3. Clean out the `external` page, if it exists and contains entries.

4. Make any further modifications you wish and deploy it.

In the `external` page, two things may optionally go if you so wish it. You may have a list of other known mirrors on there, in which case you may wish to stay in contact with the maintainers of them. Secondly, you may have a list of certified TT software.

The certification process is simple: find a lay person that has never seen that software, and ask them to spend a weekend (the source of the "2 days" requirement) trying to understand the software in its entirety - including the *API* of the dependencies, the entirety of the license, and the meta knowledge (how to build/deploy it). If you cannot find such a person, you may use a technologist instead, but then the time allowed is restricted to 1/8th (i.e 6 hours). This is a much harsher requirement. Finally, you cannot certify your own projects.,

People looking at the list of certified projects are encouraged to verify the certifications themselves, perhaps to add them to their own list. Scenarios of someone simply certifying whatever they wish, or their own projects, should become blatantly clear, in which case the mirror in question is to be ignored when it comes to that, for they are clearly acting in bad faith.

## Make TT Software

The first step is simple - you must desire for your project to be Trivial. If you have such a desire, insert a phrase into your README, proclaiming to the word that your project strives to achieve the standards of the TT movement, and link to a mirror of your choosing (you should link to the landing page). The rest matters little, if you manage to achieve those standards. The rest of this are but recommendations.

1. Your commits should be minimally small, and explain why the changes in question were made.

2. You should comment in locations whenever state is significantly changed.

3. Globals, if you have any, should be read-only to the modules in which they are defined. They should only be changed by library-style consumers, or in main. If that is the case, track that in a comment near them.

4. Keep functions and types logical and limited. In no case should you have a function that does a great many things.

5. Minimize the amount of arguments. If there are 10 arguments to a function, consider why they are there, and whether they can be grouped together under a reusable type.

6. Minimize nesting and other flow features. You should have few levels of indentation. If you need customizable behaviors, consider map/reduce, or a visitor pattern. Higher Order Functions are good as long as their use is clear.

7. Keep a NEWS file. It should be consistent, and only speak of user-visible changes.

8. Keep a READING file. It should explain how to read the sources, in what order, and gently guide the reader to understanding your program.

9. Minimize both the restrictions of your LICENSE file, as well as the length, for understanding it in its entirety is part of understanding your project. We recommend the Unlicense and 0BSD.

10. Minimize the amount of "meta-work" required. A project that uses CMake requires the reader to understand CMake. This needless context-switching greatly increases the difficulty of understanding projects, especially when the meta-work grows to thousands of lines. Prefer either very small amounts thereof (basic makefile, simple script) or languages that do not have meta-work associated with them (such as Go, where the entirety of the meta work is build-flags, the use of which should be minimal).

11. Only add the features you personally use. Instead of adding all the features, simply leave open points into which one may add features themselves. If you do not use a feature, you do not know how one might want to use it, so instead empower them to add it themselves, for their own fork.
