// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package goal_configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminGetChallengeSlotsParams creates a new AdminGetChallengeSlotsParams object
// with the default values initialized.
func NewAdminGetChallengeSlotsParams() *AdminGetChallengeSlotsParams {
	var ()
	return &AdminGetChallengeSlotsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetChallengeSlotsParamsWithTimeout creates a new AdminGetChallengeSlotsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetChallengeSlotsParamsWithTimeout(timeout time.Duration) *AdminGetChallengeSlotsParams {
	var ()
	return &AdminGetChallengeSlotsParams{

		timeout: timeout,
	}
}

// NewAdminGetChallengeSlotsParamsWithContext creates a new AdminGetChallengeSlotsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetChallengeSlotsParamsWithContext(ctx context.Context) *AdminGetChallengeSlotsParams {
	var ()
	return &AdminGetChallengeSlotsParams{

		Context: ctx,
	}
}

// NewAdminGetChallengeSlotsParamsWithHTTPClient creates a new AdminGetChallengeSlotsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetChallengeSlotsParamsWithHTTPClient(client *http.Client) *AdminGetChallengeSlotsParams {
	var ()
	return &AdminGetChallengeSlotsParams{
		HTTPClient: client,
	}
}

/*AdminGetChallengeSlotsParams contains all the parameters to send to the API endpoint
for the admin get challenge slots operation typically these are written to a http.Request
*/
type AdminGetChallengeSlotsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChallengeCode
	  challenge code

	*/
	ChallengeCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) WithTimeout(timeout time.Duration) *AdminGetChallengeSlotsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) WithContext(ctx context.Context) *AdminGetChallengeSlotsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) WithHTTPClient(client *http.Client) *AdminGetChallengeSlotsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetChallengeSlotsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) WithChallengeCode(challengeCode string) *AdminGetChallengeSlotsParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) WithNamespace(namespace string) *AdminGetChallengeSlotsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get challenge slots params
func (o *AdminGetChallengeSlotsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetChallengeSlotsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param challengeCode
	if err := r.SetPathParam("challengeCode", o.ChallengeCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
