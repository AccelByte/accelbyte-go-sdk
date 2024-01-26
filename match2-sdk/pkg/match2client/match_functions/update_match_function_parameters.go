// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_functions

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewUpdateMatchFunctionParams creates a new UpdateMatchFunctionParams object
// with the default values initialized.
func NewUpdateMatchFunctionParams() *UpdateMatchFunctionParams {
	var ()
	return &UpdateMatchFunctionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateMatchFunctionParamsWithTimeout creates a new UpdateMatchFunctionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateMatchFunctionParamsWithTimeout(timeout time.Duration) *UpdateMatchFunctionParams {
	var ()
	return &UpdateMatchFunctionParams{

		timeout: timeout,
	}
}

// NewUpdateMatchFunctionParamsWithContext creates a new UpdateMatchFunctionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateMatchFunctionParamsWithContext(ctx context.Context) *UpdateMatchFunctionParams {
	var ()
	return &UpdateMatchFunctionParams{

		Context: ctx,
	}
}

// NewUpdateMatchFunctionParamsWithHTTPClient creates a new UpdateMatchFunctionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateMatchFunctionParamsWithHTTPClient(client *http.Client) *UpdateMatchFunctionParams {
	var ()
	return &UpdateMatchFunctionParams{
		HTTPClient: client,
	}
}

/*UpdateMatchFunctionParams contains all the parameters to send to the API endpoint
for the update match function operation typically these are written to a http.Request
*/
type UpdateMatchFunctionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.APIMatchFunctionRequest
	/*Name
	  name of the match function

	*/
	Name string
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

// WithTimeout adds the timeout to the update match function params
func (o *UpdateMatchFunctionParams) WithTimeout(timeout time.Duration) *UpdateMatchFunctionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update match function params
func (o *UpdateMatchFunctionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update match function params
func (o *UpdateMatchFunctionParams) WithContext(ctx context.Context) *UpdateMatchFunctionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update match function params
func (o *UpdateMatchFunctionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update match function params
func (o *UpdateMatchFunctionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update match function params
func (o *UpdateMatchFunctionParams) WithHTTPClient(client *http.Client) *UpdateMatchFunctionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update match function params
func (o *UpdateMatchFunctionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update match function params
func (o *UpdateMatchFunctionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateMatchFunctionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update match function params
func (o *UpdateMatchFunctionParams) WithBody(body *match2clientmodels.APIMatchFunctionRequest) *UpdateMatchFunctionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update match function params
func (o *UpdateMatchFunctionParams) SetBody(body *match2clientmodels.APIMatchFunctionRequest) {
	o.Body = body
}

// WithName adds the name to the update match function params
func (o *UpdateMatchFunctionParams) WithName(name string) *UpdateMatchFunctionParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the update match function params
func (o *UpdateMatchFunctionParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the update match function params
func (o *UpdateMatchFunctionParams) WithNamespace(namespace string) *UpdateMatchFunctionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update match function params
func (o *UpdateMatchFunctionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateMatchFunctionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
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
