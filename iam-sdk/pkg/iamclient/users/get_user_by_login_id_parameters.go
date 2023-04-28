// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewGetUserByLoginIDParams creates a new GetUserByLoginIDParams object
// with the default values initialized.
func NewGetUserByLoginIDParams() *GetUserByLoginIDParams {
	var ()
	return &GetUserByLoginIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserByLoginIDParamsWithTimeout creates a new GetUserByLoginIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserByLoginIDParamsWithTimeout(timeout time.Duration) *GetUserByLoginIDParams {
	var ()
	return &GetUserByLoginIDParams{

		timeout: timeout,
	}
}

// NewGetUserByLoginIDParamsWithContext creates a new GetUserByLoginIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserByLoginIDParamsWithContext(ctx context.Context) *GetUserByLoginIDParams {
	var ()
	return &GetUserByLoginIDParams{

		Context: ctx,
	}
}

// NewGetUserByLoginIDParamsWithHTTPClient creates a new GetUserByLoginIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserByLoginIDParamsWithHTTPClient(client *http.Client) *GetUserByLoginIDParams {
	var ()
	return &GetUserByLoginIDParams{
		HTTPClient: client,
	}
}

/*GetUserByLoginIDParams contains all the parameters to send to the API endpoint
for the get user by login id operation typically these are written to a http.Request
*/
type GetUserByLoginIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*LoginID
	  Login id

	*/
	LoginID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user by login id params
func (o *GetUserByLoginIDParams) WithTimeout(timeout time.Duration) *GetUserByLoginIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user by login id params
func (o *GetUserByLoginIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user by login id params
func (o *GetUserByLoginIDParams) WithContext(ctx context.Context) *GetUserByLoginIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user by login id params
func (o *GetUserByLoginIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user by login id params
func (o *GetUserByLoginIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user by login id params
func (o *GetUserByLoginIDParams) WithHTTPClient(client *http.Client) *GetUserByLoginIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user by login id params
func (o *GetUserByLoginIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user by login id params
func (o *GetUserByLoginIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user by login id params
func (o *GetUserByLoginIDParams) WithNamespace(namespace string) *GetUserByLoginIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user by login id params
func (o *GetUserByLoginIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLoginID adds the loginID to the get user by login id params
func (o *GetUserByLoginIDParams) WithLoginID(loginID *string) *GetUserByLoginIDParams {
	o.SetLoginID(loginID)
	return o
}

// SetLoginID adds the loginId to the get user by login id params
func (o *GetUserByLoginIDParams) SetLoginID(loginID *string) {
	o.LoginID = loginID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserByLoginIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.LoginID != nil {

		// query param loginId
		var qrLoginID string
		if o.LoginID != nil {
			qrLoginID = *o.LoginID
		}
		qLoginID := qrLoginID
		if qLoginID != "" {
			if err := r.SetQueryParam("loginId", qLoginID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
