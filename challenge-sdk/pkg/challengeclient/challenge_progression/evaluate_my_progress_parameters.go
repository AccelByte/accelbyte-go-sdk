// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_progression

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewEvaluateMyProgressParams creates a new EvaluateMyProgressParams object
// with the default values initialized.
func NewEvaluateMyProgressParams() *EvaluateMyProgressParams {
	var (
		includeOneTimeEventDefault = string("false")
	)
	return &EvaluateMyProgressParams{
		IncludeOneTimeEvent: &includeOneTimeEventDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewEvaluateMyProgressParamsWithTimeout creates a new EvaluateMyProgressParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEvaluateMyProgressParamsWithTimeout(timeout time.Duration) *EvaluateMyProgressParams {
	var (
		includeOneTimeEventDefault = string("false")
	)
	return &EvaluateMyProgressParams{
		IncludeOneTimeEvent: &includeOneTimeEventDefault,

		timeout: timeout,
	}
}

// NewEvaluateMyProgressParamsWithContext creates a new EvaluateMyProgressParams object
// with the default values initialized, and the ability to set a context for a request
func NewEvaluateMyProgressParamsWithContext(ctx context.Context) *EvaluateMyProgressParams {
	var (
		includeOneTimeEventDefault = string("false")
	)
	return &EvaluateMyProgressParams{
		IncludeOneTimeEvent: &includeOneTimeEventDefault,

		Context: ctx,
	}
}

// NewEvaluateMyProgressParamsWithHTTPClient creates a new EvaluateMyProgressParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEvaluateMyProgressParamsWithHTTPClient(client *http.Client) *EvaluateMyProgressParams {
	var (
		includeOneTimeEventDefault = string("false")
	)
	return &EvaluateMyProgressParams{
		IncludeOneTimeEvent: &includeOneTimeEventDefault,
		HTTPClient:          client,
	}
}

/*EvaluateMyProgressParams contains all the parameters to send to the API endpoint
for the evaluate my progress operation typically these are written to a http.Request
*/
type EvaluateMyProgressParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ChallengeCode
	  challenge code to be evaluated, comma separated value

	*/
	ChallengeCode []string
	/*IncludeOneTimeEvent
	  Include one-time events (e.g. user achievement unlocks, platform linking). Normally this flag should be disabled and is only used to recover from failed one-time event processing.

	*/
	IncludeOneTimeEvent *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the evaluate my progress params
func (o *EvaluateMyProgressParams) WithTimeout(timeout time.Duration) *EvaluateMyProgressParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the evaluate my progress params
func (o *EvaluateMyProgressParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the evaluate my progress params
func (o *EvaluateMyProgressParams) WithContext(ctx context.Context) *EvaluateMyProgressParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the evaluate my progress params
func (o *EvaluateMyProgressParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the evaluate my progress params
func (o *EvaluateMyProgressParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the evaluate my progress params
func (o *EvaluateMyProgressParams) WithHTTPClient(client *http.Client) *EvaluateMyProgressParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the evaluate my progress params
func (o *EvaluateMyProgressParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the evaluate my progress params
func (o *EvaluateMyProgressParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *EvaluateMyProgressParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the evaluate my progress params
func (o *EvaluateMyProgressParams) WithNamespace(namespace string) *EvaluateMyProgressParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the evaluate my progress params
func (o *EvaluateMyProgressParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithChallengeCode adds the challengeCode to the evaluate my progress params
func (o *EvaluateMyProgressParams) WithChallengeCode(challengeCode []string) *EvaluateMyProgressParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the evaluate my progress params
func (o *EvaluateMyProgressParams) SetChallengeCode(challengeCode []string) {
	o.ChallengeCode = challengeCode
}

// WithIncludeOneTimeEvent adds the includeOneTimeEvent to the evaluate my progress params
func (o *EvaluateMyProgressParams) WithIncludeOneTimeEvent(includeOneTimeEvent *string) *EvaluateMyProgressParams {
	o.SetIncludeOneTimeEvent(includeOneTimeEvent)
	return o
}

// SetIncludeOneTimeEvent adds the includeOneTimeEvent to the evaluate my progress params
func (o *EvaluateMyProgressParams) SetIncludeOneTimeEvent(includeOneTimeEvent *string) {
	o.IncludeOneTimeEvent = includeOneTimeEvent
}

// WriteToRequest writes these params to a swagger request
func (o *EvaluateMyProgressParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesChallengeCode := o.ChallengeCode

	joinedChallengeCode := swag.JoinByFormat(valuesChallengeCode, "csv")
	// query array param challengeCode
	if err := r.SetQueryParam("challengeCode", joinedChallengeCode...); err != nil {
		return err
	}

	if o.IncludeOneTimeEvent != nil {

		// query param includeOneTimeEvent
		var qrIncludeOneTimeEvent string
		if o.IncludeOneTimeEvent != nil {
			qrIncludeOneTimeEvent = *o.IncludeOneTimeEvent
		}
		qIncludeOneTimeEvent := qrIncludeOneTimeEvent
		if qIncludeOneTimeEvent != "" {
			if err := r.SetQueryParam("includeOneTimeEvent", qIncludeOneTimeEvent); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
