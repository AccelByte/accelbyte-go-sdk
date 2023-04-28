// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

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

// NewAddClientPermissionParams creates a new AddClientPermissionParams object
// with the default values initialized.
func NewAddClientPermissionParams() *AddClientPermissionParams {
	var ()
	return &AddClientPermissionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddClientPermissionParamsWithTimeout creates a new AddClientPermissionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddClientPermissionParamsWithTimeout(timeout time.Duration) *AddClientPermissionParams {
	var ()
	return &AddClientPermissionParams{

		timeout: timeout,
	}
}

// NewAddClientPermissionParamsWithContext creates a new AddClientPermissionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddClientPermissionParamsWithContext(ctx context.Context) *AddClientPermissionParams {
	var ()
	return &AddClientPermissionParams{

		Context: ctx,
	}
}

// NewAddClientPermissionParamsWithHTTPClient creates a new AddClientPermissionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddClientPermissionParamsWithHTTPClient(client *http.Client) *AddClientPermissionParams {
	var ()
	return &AddClientPermissionParams{
		HTTPClient: client,
	}
}

/*AddClientPermissionParams contains all the parameters to send to the API endpoint
for the add client permission operation typically these are written to a http.Request
*/
type AddClientPermissionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Action
	  Action

	*/
	Action int64
	/*ClientID
	  Client ID

	*/
	ClientID string
	/*Resource
	  Resource Name

	*/
	Resource string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the add client permission params
func (o *AddClientPermissionParams) WithTimeout(timeout time.Duration) *AddClientPermissionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add client permission params
func (o *AddClientPermissionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add client permission params
func (o *AddClientPermissionParams) WithContext(ctx context.Context) *AddClientPermissionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add client permission params
func (o *AddClientPermissionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add client permission params
func (o *AddClientPermissionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add client permission params
func (o *AddClientPermissionParams) WithHTTPClient(client *http.Client) *AddClientPermissionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add client permission params
func (o *AddClientPermissionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add client permission params
func (o *AddClientPermissionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAction adds the action to the add client permission params
func (o *AddClientPermissionParams) WithAction(action int64) *AddClientPermissionParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the add client permission params
func (o *AddClientPermissionParams) SetAction(action int64) {
	o.Action = action
}

// WithClientID adds the clientID to the add client permission params
func (o *AddClientPermissionParams) WithClientID(clientID string) *AddClientPermissionParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the add client permission params
func (o *AddClientPermissionParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithResource adds the resource to the add client permission params
func (o *AddClientPermissionParams) WithResource(resource string) *AddClientPermissionParams {
	o.SetResource(resource)
	return o
}

// SetResource adds the resource to the add client permission params
func (o *AddClientPermissionParams) SetResource(resource string) {
	o.Resource = resource
}

// WriteToRequest writes these params to a swagger request
func (o *AddClientPermissionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param action
	if err := r.SetPathParam("action", swag.FormatInt64(o.Action)); err != nil {
		return err
	}

	// path param clientId
	if err := r.SetPathParam("clientId", o.ClientID); err != nil {
		return err
	}

	// path param resource
	if err := r.SetPathParam("resource", o.Resource); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
