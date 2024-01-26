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
)

// NewDeleteMatchFunctionParams creates a new DeleteMatchFunctionParams object
// with the default values initialized.
func NewDeleteMatchFunctionParams() *DeleteMatchFunctionParams {
	var ()
	return &DeleteMatchFunctionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteMatchFunctionParamsWithTimeout creates a new DeleteMatchFunctionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteMatchFunctionParamsWithTimeout(timeout time.Duration) *DeleteMatchFunctionParams {
	var ()
	return &DeleteMatchFunctionParams{

		timeout: timeout,
	}
}

// NewDeleteMatchFunctionParamsWithContext creates a new DeleteMatchFunctionParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteMatchFunctionParamsWithContext(ctx context.Context) *DeleteMatchFunctionParams {
	var ()
	return &DeleteMatchFunctionParams{

		Context: ctx,
	}
}

// NewDeleteMatchFunctionParamsWithHTTPClient creates a new DeleteMatchFunctionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteMatchFunctionParamsWithHTTPClient(client *http.Client) *DeleteMatchFunctionParams {
	var ()
	return &DeleteMatchFunctionParams{
		HTTPClient: client,
	}
}

/*DeleteMatchFunctionParams contains all the parameters to send to the API endpoint
for the delete match function operation typically these are written to a http.Request
*/
type DeleteMatchFunctionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the delete match function params
func (o *DeleteMatchFunctionParams) WithTimeout(timeout time.Duration) *DeleteMatchFunctionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete match function params
func (o *DeleteMatchFunctionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete match function params
func (o *DeleteMatchFunctionParams) WithContext(ctx context.Context) *DeleteMatchFunctionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete match function params
func (o *DeleteMatchFunctionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete match function params
func (o *DeleteMatchFunctionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete match function params
func (o *DeleteMatchFunctionParams) WithHTTPClient(client *http.Client) *DeleteMatchFunctionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete match function params
func (o *DeleteMatchFunctionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete match function params
func (o *DeleteMatchFunctionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteMatchFunctionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithName adds the name to the delete match function params
func (o *DeleteMatchFunctionParams) WithName(name string) *DeleteMatchFunctionParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the delete match function params
func (o *DeleteMatchFunctionParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the delete match function params
func (o *DeleteMatchFunctionParams) WithNamespace(namespace string) *DeleteMatchFunctionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete match function params
func (o *DeleteMatchFunctionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteMatchFunctionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
