// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

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

// NewGetPlatformDLCConfigParams creates a new GetPlatformDLCConfigParams object
// with the default values initialized.
func NewGetPlatformDLCConfigParams() *GetPlatformDLCConfigParams {
	var ()
	return &GetPlatformDLCConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPlatformDLCConfigParamsWithTimeout creates a new GetPlatformDLCConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPlatformDLCConfigParamsWithTimeout(timeout time.Duration) *GetPlatformDLCConfigParams {
	var ()
	return &GetPlatformDLCConfigParams{

		timeout: timeout,
	}
}

// NewGetPlatformDLCConfigParamsWithContext creates a new GetPlatformDLCConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPlatformDLCConfigParamsWithContext(ctx context.Context) *GetPlatformDLCConfigParams {
	var ()
	return &GetPlatformDLCConfigParams{

		Context: ctx,
	}
}

// NewGetPlatformDLCConfigParamsWithHTTPClient creates a new GetPlatformDLCConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPlatformDLCConfigParamsWithHTTPClient(client *http.Client) *GetPlatformDLCConfigParams {
	var ()
	return &GetPlatformDLCConfigParams{
		HTTPClient: client,
	}
}

/*GetPlatformDLCConfigParams contains all the parameters to send to the API endpoint
for the get platform dlc config operation typically these are written to a http.Request
*/
type GetPlatformDLCConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) WithTimeout(timeout time.Duration) *GetPlatformDLCConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) WithContext(ctx context.Context) *GetPlatformDLCConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) WithHTTPClient(client *http.Client) *GetPlatformDLCConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) WithNamespace(namespace string) *GetPlatformDLCConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get platform dlc config params
func (o *GetPlatformDLCConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetPlatformDLCConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
