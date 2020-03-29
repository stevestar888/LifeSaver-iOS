//
//  InstructionsText.swift
//  LifeSaver
//
//  Created by Michael Battista on 6/1/17.
//  Copyright © 2017 Steven Xu. All rights reserved.
//

import Foundation

var category = [[""]]

    // step # and descript  image type      image name      speical instructions?       description

let adultCPRInstructions = [
    ["http://depts.washington.edu/learncpr/videodemo/adult-cpr-video.html"],
    ["Step 1: Assess", "png", "aedSymbol", "",
     "■ Survey the scene. Make sure you are in a safe location. \n■ Check for responsiveness: tap the person on the shoulder and shout \"Are you OK?\". \n■ If the person does not respond, send someone to get an AED, which can be found in most public places. An AED looks like:"],
    ["Step 2: Take Action", "png", "call911", "",
     "■ Call 911 or ask someone else to do it. \n■ Set the phone next to you and place on speaker mode. \n■ In most locations, 911 can help you with CPR instructions. If 911 can help you with CPR, refer to their instructions."],
    ["Step 3: Listen for Breathing", "", "", "",
     "■ Lay the person on his or her back and slightly tilt the head back (to lift the chin). \n■ Take 10 seconds to listen for normal breathing and watch for movement. (Occasional gasps are not breathing.) \n■ If there is no breathing, begin CPR."],
    ["Step 4: Chest Compressions", "gif", "adultCPRCompression", "timer35",
     "■ Place your hands, one on top of the other, in the middle of the chest. \n■ Push down in the center of the chest at least 2 inches for each compression. \n■ Give 30 compressions at 100 compressions per minute (a little faster than 1 compression per second). Use the timer below to guide you. The timer will count down from 35 when you click “Start”—use the extra 5 beats to find your rhyme."],
    ["Step 5: Rescue Breaths", "gif", "adultCPRBreath", "", "■ Tilt the head back and lift the chin to open mouth. Pinch the nose and cover the mouth with yours. Make sure the seal is complete. \n■ Blow until you see the chest rise*. \n■ Give 2 breaths. Each breath should take 1 second. \n *If the chest doesn’t rise after the first rescue breath: re-adjust the head before delivering the second breath; if the chest doesn't rise with the second breath, the person may be choking. If this is the case, after each set of 100 chest compressions, and before attempting breaths, look for an object and remove it if seen."],
    ["Step 6: Repeat", "png", "repeat", "",
     "■ Repeat the cycle of 30 Chest Compressions followed by 2 Rescue Breaths. \n■ Stop only when (1) person starts breathing, (2) an AED is available, (3) EMS or a trained medical responder arrives on scene, (4) the scene becomes unsafe, or (5) you cannot continue performing CPR due to exhaustion—if this is the case, have someone else take over."],
    ]


let childCPRInstructions = [
    ["http://depts.washington.edu/learncpr/videodemo/child-cpr-video.html"],
    ["Step 1: Assess", "png", "aedSymbol", "",
     "■ Survey the scene. Make sure you are in a safe location. \n■ Check for responsiveness: tap the child on the shoulder and shout \"Are you OK?\". \n■ If the child does not respond, send someone to get an AED, which can be found in most public places. Only children over age 8 can be treated with a standard AED. An AED looks like:"],
    ["Step 2: Take Action", "png", "call911", "",
     "■ Ask someone to call 911. If you are alone with the child give 2 minutes of CPR before calling 911. \n■ If 911 is called, set the phone next to you and place on speaker mode. \n■ In most locations, 911 can help you with CPR instructions. If 911 can help you with CPR, refer to their instructions."],
    ["Step 3: Listen for Breathing", "", "", "", "■ Lay the child on his or her back and slightly tilt the head back (to lift the chin). \n■ Take 10 seconds to listen for normal breathing and watch for movement. (Occasional gasps are not breathing.) \n■ If there is no breathing, begin CPR."],
    ["Step 4: Chest Compressions", "gif", "childCPRCompression", "timer35", "■ Kneel beside the child. \n■ Place the heel of one hand laced with the other hand on the sternum (area in between the ribs). \n■ Push down at least 2 inches for each compression. \n■ Give 30 compressions at 100 compressions per minute (a little faster than 1 compression per second). Use the timer below to guide you. The timer will count down from 35 when you click “Start”—use the extra 5 beats to find your rhyme."],
    ["Step 5: Rescue Breaths", "gif", "childCPRBreath", "", "■ Tilt the head back and listen for breathing. \n■ If not breathing normally, lift the chin to open mouth, pinch the nose, and cover the mouth with yours. Make sure the seal is complete. \n■ Give 2 breaths.  Each breath should take 1 second."],
    ["Step 6: Repeat", "png", "repeat", "",
     "■ Repeat the cycle of 30 Chest Compressions followed by 2 Rescue Breaths. \n■ Stop only when (1) child starts breathing, (2) an AED is available (only use AED if the child is over 8!), (3) EMS or a trained medical responder arrives on scene, (4) the scene becomes unsafe, or (5) you cannot continue performing CPR due to exhaustion—if this is the case, have someone else take over."],
    ]

let infantCPRInstructions = [
    ["http://depts.washington.edu/learncpr/videodemo/infant-cpr-video.html"],
    ["Step 1: Assess", "png", "infantCPRAssess", "", "■ Survey the scene. Make sure you are in a safe location. \n■ Check for responsiveness: flick the bottom of the foot or gently tap the shoulder."],
    ["Step 2: Take Action", "", "", "", "■ Ask someone to call 911. If you are alone with the infant, give 2 minutes of CPR before calling 911. \n■ If 911 is called, set the phone next to you and place on speaker mode. In most locations, 911 can help you with CPR instructions. If 911 can help you with CPR, refer to their instructions."],
    ["Step 3: Listen for Breathing", "png", "infantCPRListen", "", "■ Lay the infant on his or her back and slightly tilt the head back (to lift the chin). \n■ Take 10 seconds to listen for normal breathing and watch for movement. (Infants typically have periodic breathing, so changes in breathing patterns are normal.) \n■ If there is no breathing, begin CPR."],
    ["Step 4: Chest Compressions", "png", "infantCPRCompression", "timer35", "■ Kneel beside the infant. \n■ Place 2 fingers on the center of the chest just below the nipples. \n■ Push down gently about 1.5 inches for each compression. \n■ Give 30 compressions at 100 compressions per minute (a little faster than 1 compression per second). Use the timer below to guide you. The timer will count down from 35 when you click “Start”—use the extra 5 beats to find your rhyme."],
    ["Step 5: Rescue Breaths", "png", "infantCPRBreath", "", "■ Tilt the head back (not too far) and listen for breathing. \n■ If not breathing normally, make a complete seal over the infant's mouth and nose with your mouth. \n■ Give 2 breaths. You should see the infant’s chest rise with each breath."],
    ["Step 6: Repeat", "png", "repeat", "",
     "■ Repeat the cycle of 30 Chest Compressions followed by 2 Rescue Breaths. \n■ Stop only when (1) infant starts breathing, (2) EMS or a trained medical responder arrives on scene, (3) the scene becomes unsafe, or (4) you cannot continue performing CPR due to exhaustion—if this is the case, have someone else take over."],
    ]

let handsOnlyCPRInstructions = [
    ["http://depts.washington.edu/learncpr/videodemo/two-step-cpr.html"],
    ["Step 1: Assess ", "png", "aedSymbol", "", "■ Survey the scene. Make sure you are in a safe location. \n■ Check for responsiveness: tap the person on the shoulder and shout \"Are you OK?\". \n■ If the person does not respond, send someone to get an AED, which can be found in most public places. An AED looks like:"],
    ["Step 2: Take Action", "png", "call911", "", "■ Call 911 or ask someone else to do it. \n■ Set the phone next to you and place on speaker mode. \n■ In most locations, 911 can help you with CPR instructions. If 911 can help you with CPR, refer to their instructions."],
    ["Step 3: Listen for Breathing", "", "", "", "■ Lay the person on his or her back and slightly tilt the head back (to lift the chin). \n■ Take 10 seconds to listen for normal breathing and watch for movement. (Occasional gasps are not breathing.) \n■ If there is no breathing, begin CPR."],
    ["Step 4: Chest Compressions", "gif", "adultCPRCompression", "timer100", "■ Place your hands, one on top of the other, in the middle of the chest. \n■ Push down in the center of the chest at least 2 inches for each compression. \n■ Begin compressions at 100 compressions per minute (a little faster than 1 compression per second). Use the timer below to guide you. The timer will count down from 100  when you click “Start”. Click “Reset” to get another 100. \n■ Keep giving Chest Compressions until (1) person starts breathing, (2) an AED is available, (3) EMS or a trained medical responder arrives on scene, (4) the scene becomes unsafe, or (5) you cannot continue performing CPR due to exhaustion—if this is the case, have someone else take over."],
    ]






let adultChokingInstructions = [
    ["http://depts.washington.edu/learncpr/videodemo/choking-adult-video.html"],
    ["Step 1: Access", "png", "adultChokingAccess", "", "■ Survey the scene. Make sure you in a safe location. \n■ Determine if the person can speak or cough. \n■ If not, call 911 and proceed to the next step."],
    ["Step 2: Back Blows", "", "", "", "■ Bend the person forward at the waist. \n■ Give 5 back blows between the shoulder blades with the heel of one hand."],
    ["Step 3: Abdominal Thrusts", "png", "adultChokingThrust", "", "■ Form a fist with one hand and place it just about the belly button. \n■ Cover the fist with the other hand. \n■ Give 5 quick, upward Abdominal Thrusts (aka Heimlich Maneuver)."],
    ["Step 4: Repeat", "png", "repeat", "", "■ Repeat the cycle of 5 back blows followed by 5 Abdominal Thrusts \n■ If the person collapses, begin CPR."],
    ]


let childChokingInstructions = [
    ["http://depts.washington.edu/learncpr/videodemo/choking-child-video.html"],
    ["Step 1: Access", "png", "childChokingAccess", "", "■ Survey the scene. Make sure you in a safe location. \n■ Determine if the child can speak or cough. \n■ If not, call 911 and proceed to the next step."],
    ["Step 2: Back Blows", "", "", "", "■ Bend the child forward at the waist. \n■ Give 5 back blows between the shoulder blades with the heel of one hand."],
    ["Step 3: Abdominal Thrusts", "png", "childChokingThrust", "", "■ Form a fist with one hand and place it just about the belly button. \n■ Cover the fist with the other hand. \n■ Give 5 quick, upward Abdominal Thrusts (aka Heimlich Maneuver)."],
    ["Step 4: Repeat", "png", "repeat", "", "■ Repeat the cycle of 5 back blows followed by 5 Abdominal Thrusts \n■ If the child collapses, begin CPR."],
    ]

let infantChokingInstructions = [
    ["http://depts.washington.edu/learncpr/videodemo/choking-infant-video.html"],
    ["Step 1: Assess", "png", "call911", "", "■ Survey the scene. Make sure you are in a safe location. \n■ Determine if the infant can cry or cough. \n■ If not, call 911 and proceed to the next step."],
    ["Step 2: Back Blows", "png", "infantChokingBackSlap", "", "■ Hold the infant face-down with one arm \n■ Give 5 back blows between the shoulder blades with the heel of one hand."],
    ["Step 3: Chest Thrusts", "png", "infantChokingThrust", "", "■ Lay the infant on his or her back. \n■ Using 2 fingers, give 5 chest thrusts."],
    ["Step 4: Repeat", "png", "repeat", "", "Step 4: Repeat \n■ Repeat the cycle of 5 back blows followed by 5 chest thrusts. \n■ If you see an object in the throat or mouth, remove it. \n■ If the infant becomes unresponsive, start CPR."],
    ]


