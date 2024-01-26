// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewPatchUpdateGameSessionParams creates a new PatchUpdateGameSessionParams object
// with the default values initialized.
func NewPatchUpdateGameSessionParams() *PatchUpdateGameSessionParams {
	var ()
	return &PatchUpdateGameSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPatchUpdateGameSessionParamsWithTimeout creates a new PatchUpdateGameSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPatchUpdateGameSessionParamsWithTimeout(timeout time.Duration) *PatchUpdateGameSessionParams {
	var ()
	return &PatchUpdateGameSessionParams{

		timeout: timeout,
	}
}

// NewPatchUpdateGameSessionParamsWithContext creates a new PatchUpdateGameSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPatchUpdateGameSessionParamsWithContext(ctx context.Context) *PatchUpdateGameSessionParams {
	var ()
	return &PatchUpdateGameSessionParams{

		Context: ctx,
	}
}

// NewPatchUpdateGameSessionParamsWithHTTPClient creates a new PatchUpdateGameSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPatchUpdateGameSessionParamsWithHTTPClient(client *http.Client) *PatchUpdateGameSessionParams {
	var ()
	return &PatchUpdateGameSessionParams{
		HTTPClient: client,
	}
}

/*PatchUpdateGameSessionParams contains all the parameters to send to the API endpoint
for the patch update game session operation typically these are written to a http.Request
*/
type PatchUpdateGameSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsUpdateGameSessionRequest
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SessionID
	  session ID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the patch update game session params
func (o *PatchUpdateGameSessionParams) WithTimeout(timeout time.Duration) *PatchUpdateGameSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the patch update game session params
func (o *PatchUpdateGameSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the patch update game session params
func (o *PatchUpdateGameSessionParams) WithContext(ctx context.Context) *PatchUpdateGameSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the patch update game session params
func (o *PatchUpdateGameSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the patch update game session params
func (o *PatchUpdateGameSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the patch update game session params
func (o *PatchUpdateGameSessionParams) WithHTTPClient(client *http.Client) *PatchUpdateGameSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the patch update game session params
func (o *PatchUpdateGameSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the patch update game session params
func (o *PatchUpdateGameSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PatchUpdateGameSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the patch update game session params
func (o *PatchUpdateGameSessionParams) WithBody(body *sessionclientmodels.ApimodelsUpdateGameSessionRequest) *PatchUpdateGameSessionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the patch update game session params
func (o *PatchUpdateGameSessionParams) SetBody(body *sessionclientmodels.ApimodelsUpdateGameSessionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the patch update game session params
func (o *PatchUpdateGameSessionParams) WithNamespace(namespace string) *PatchUpdateGameSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the patch update game session params
func (o *PatchUpdateGameSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the patch update game session params
func (o *PatchUpdateGameSessionParams) WithSessionID(sessionID string) *PatchUpdateGameSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the patch update game session params
func (o *PatchUpdateGameSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *PatchUpdateGameSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionId
	if err := r.SetPathParam("sessionId", o.SessionID); err != nil {
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
