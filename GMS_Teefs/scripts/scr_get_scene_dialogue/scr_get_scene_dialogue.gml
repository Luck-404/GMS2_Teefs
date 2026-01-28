function scr_get_scene_dialogue(_scene)
{
    switch (_scene)
    {
        case "PARK":
            return [
                { speaker: CAT_ID.TEEFS, text: "Wow, the park is huge." },
                { speaker: CAT_ID.TEEFS, text: "Look at all the birds!" },
                { speaker: CAT_ID.TEEFS, text: "I could chase them forever." },
                { speaker: CAT_ID.GRAY,  text: "You'd trip immediately." },
                { speaker: CAT_ID.GRAY,  text: "And cry." },
                { speaker: CAT_ID.TEEFS, text: "Rude." }
            ];

        case "HOUSE":
            return [
                { speaker: CAT_ID.GRAY,  text: "I hate this place." },
                { speaker: CAT_ID.GRAY,  text: "The couch is judging me." },
                { speaker: CAT_ID.GRAY,  text: "Everything judges me." },
                { speaker: CAT_ID.GRAY,  text: "Even you." },
                { speaker: CAT_ID.TEEFS, text: "I just live here." }
            ];
    }

    return [];
}
