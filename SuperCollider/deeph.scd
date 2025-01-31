
s.boot;

(
SynthDef(\deep_bass, {
    arg freq, dur;
    var osc, filter, env;
    
    // Saw wave oscillator
    osc = Saw.ar(freq, 0.5);
    
    // Low-pass filter for a deeper sound
    filter = LPF.ar(osc, 100);  // 100 Hz cutoff frequency
    
    // Envelope for shaping the sound
    env = EnvGen.kr(Env.perc(0.01, 0.5), doneAction: 2);
    
    // Apply envelope and send to output
    Out.ar(0, filter * env);
}).add;
)

// Define a simple kick drum synth using a sine wave
(
SynthDef(\kick_drum, {
    var osc, env;
    
    // Sine wave oscillator at 40 Hz for a deep kick
    osc = SinOsc.ar(40, 0, 0.8);
    
    // Percussive envelope
    env = EnvGen.kr(Env.perc(0.01, 0.2), doneAction: 2);
    
    // Apply envelope and send to output
    Out.ar(0, osc * env);
}).add;
)

// Define a chord synth using saw waves
(
SynthDef(\chords, {
    arg freq1, freq2, freq3, dur;
    var osc1, osc2, osc3, mix, env;
    
    // Three saw waves for rich chord sound
    osc1 = Saw.ar(freq1);
    osc2 = Saw.ar(freq2);
    osc3 = Saw.ar(freq3);
    
    // Mix the three oscillators
    mix = (osc1 + osc2 + osc3) * 0.33;
    
    // Envelope for the chord progression
    env = EnvGen.kr(Env.perc(0.1, 1.5), doneAction: 2);
    
    // Apply envelope and send to output
    Out.ar(0, mix * env);
}).add;
)

// Play a deep bass sequence
(
Pbind(
    \instrument, \deep_bass,
    \freq, Pseq([50, 55, 53, 57], inf),  // Bassline sequence
    \dur, 1
).play;
)

// Play a kick drum on every beat
(
Pbind(
    \instrument, \kick_drum,
    \dur, 1  // Kick on each beat
).play;
)

// Play smooth deep house chords
(
Pbind(
    \instrument, \chords,
    \freq1, Pseq([60, 62, 65, 67], inf),  // First note of the chord
    \freq2, Pseq([64, 67, 70, 72], inf),  // Second note of the chord
    \freq3, Pseq([69, 71, 74, 76], inf),  // Third note of the chord
    \dur, 2  // Chords last two beats
).play;
)
