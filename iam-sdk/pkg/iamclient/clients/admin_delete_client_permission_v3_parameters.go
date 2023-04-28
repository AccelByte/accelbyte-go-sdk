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

// NewAdminDeleteClientPermissionV3Params creates a new AdminDeleteClientPermissionV3Params object
// with the default values initialized.
func NewAdminDeleteClientPermissionV3Params() *AdminDeleteClientPermissionV3Params {
	var ()
	return &AdminDeleteClientPermissionV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteClientPermissionV3ParamsWithTimeout creates a new AdminDeleteClientPermissionV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteClientPermissionV3ParamsWithTimeout(timeout time.Duration) *AdminDeleteClientPermissionV3Params {
	var ()
	return &AdminDeleteClientPermissionV3Params{

		timeout: timeout,
	}
}

// NewAdminDeleteClientPermissionV3ParamsWithContext creates a new AdminDeleteClientPermissionV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteClientPermissionV3ParamsWithContext(ctx context.Context) *AdminDeleteClientPermissionV3Params {
	var ()
	return &AdminDeleteClientPermissionV3Params{

		Context: ctx,
	}
}

// NewAdminDeleteClientPermissionV3ParamsWithHTTPClient creates a new AdminDeleteClientPermissionV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteClientPermissionV3ParamsWithHTTPClient(client *http.Client) *AdminDeleteClientPermissionV3Params {
	var ()
	return &AdminDeleteClientPermissionV3Params{
		HTTPClient: client,
	}
}

/*AdminDeleteClientPermissionV3Params contains all the parameters to send to the API endpoint
for the admin delete client permission v3 operation typically these are written to a http.Request
*/
type AdminDeleteClientPermissionV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Action
	  Action, value must be in range 1-15

	*/
	Action int64
	/*ClientID
	  Client ID, should follow UUID version 4 without hyphen

	*/
	ClientID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Resource
	  Resource Name

	*/
	Resource string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) WithTimeout(timeout time.Duration) *AdminDeleteClientPermissionV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) WithContext(ctx context.Context) *AdminDeleteClientPermissionV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) WithHTTPClient(client *http.Client) *AdminDeleteClientPermissionV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAction adds the action to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) WithAction(action int64) *AdminDeleteClientPermissionV3Params {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) SetAction(action int64) {
	o.Action = action
}

// WithClientID adds the clientID to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) WithClientID(clientID string) *AdminDeleteClientPermissionV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithNamespace adds the namespace to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) WithNamespace(namespace string) *AdminDeleteClientPermissionV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithResource adds the resource to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) WithResource(resource string) *AdminDeleteClientPermissionV3Params {
	o.SetResource(resource)
	return o
}

// SetResource adds the resource to the admin delete client permission v3 params
func (o *AdminDeleteClientPermissionV3Params) SetResource(resource string) {
	o.Resource = resource
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteClientPermissionV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
