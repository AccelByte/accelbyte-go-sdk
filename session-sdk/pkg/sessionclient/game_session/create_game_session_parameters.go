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

// NewCreateGameSessionParams creates a new CreateGameSessionParams object
// with the default values initialized.
func NewCreateGameSessionParams() *CreateGameSessionParams {
	var ()
	return &CreateGameSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateGameSessionParamsWithTimeout creates a new CreateGameSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateGameSessionParamsWithTimeout(timeout time.Duration) *CreateGameSessionParams {
	var ()
	return &CreateGameSessionParams{

		timeout: timeout,
	}
}

// NewCreateGameSessionParamsWithContext creates a new CreateGameSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateGameSessionParamsWithContext(ctx context.Context) *CreateGameSessionParams {
	var ()
	return &CreateGameSessionParams{

		Context: ctx,
	}
}

// NewCreateGameSessionParamsWithHTTPClient creates a new CreateGameSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateGameSessionParamsWithHTTPClient(client *http.Client) *CreateGameSessionParams {
	var ()
	return &CreateGameSessionParams{
		HTTPClient: client,
	}
}

/*CreateGameSessionParams contains all the parameters to send to the API endpoint
for the create game session operation typically these are written to a http.Request
*/
type CreateGameSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsCreateGameSessionRequest
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create game session params
func (o *CreateGameSessionParams) WithTimeout(timeout time.Duration) *CreateGameSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create game session params
func (o *CreateGameSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create game session params
func (o *CreateGameSessionParams) WithContext(ctx context.Context) *CreateGameSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create game session params
func (o *CreateGameSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create game session params
func (o *CreateGameSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create game session params
func (o *CreateGameSessionParams) WithHTTPClient(client *http.Client) *CreateGameSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create game session params
func (o *CreateGameSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create game session params
func (o *CreateGameSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateGameSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create game session params
func (o *CreateGameSessionParams) WithBody(body *sessionclientmodels.ApimodelsCreateGameSessionRequest) *CreateGameSessionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create game session params
func (o *CreateGameSessionParams) SetBody(body *sessionclientmodels.ApimodelsCreateGameSessionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create game session params
func (o *CreateGameSessionParams) WithNamespace(namespace string) *CreateGameSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create game session params
func (o *CreateGameSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateGameSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
