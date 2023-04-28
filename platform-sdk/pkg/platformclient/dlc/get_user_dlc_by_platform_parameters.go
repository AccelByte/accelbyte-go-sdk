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

// Get the enum in GetUserDLCByPlatformParams
const (
	GetUserDLCByPlatformEPICGAMESConstant = "EPICGAMES"
	GetUserDLCByPlatformPSNConstant       = "PSN"
	GetUserDLCByPlatformSTEAMConstant     = "STEAM"
	GetUserDLCByPlatformXBOXConstant      = "XBOX"
)

// NewGetUserDLCByPlatformParams creates a new GetUserDLCByPlatformParams object
// with the default values initialized.
func NewGetUserDLCByPlatformParams() *GetUserDLCByPlatformParams {
	var ()
	return &GetUserDLCByPlatformParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserDLCByPlatformParamsWithTimeout creates a new GetUserDLCByPlatformParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserDLCByPlatformParamsWithTimeout(timeout time.Duration) *GetUserDLCByPlatformParams {
	var ()
	return &GetUserDLCByPlatformParams{

		timeout: timeout,
	}
}

// NewGetUserDLCByPlatformParamsWithContext creates a new GetUserDLCByPlatformParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserDLCByPlatformParamsWithContext(ctx context.Context) *GetUserDLCByPlatformParams {
	var ()
	return &GetUserDLCByPlatformParams{

		Context: ctx,
	}
}

// NewGetUserDLCByPlatformParamsWithHTTPClient creates a new GetUserDLCByPlatformParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserDLCByPlatformParamsWithHTTPClient(client *http.Client) *GetUserDLCByPlatformParams {
	var ()
	return &GetUserDLCByPlatformParams{
		HTTPClient: client,
	}
}

/*GetUserDLCByPlatformParams contains all the parameters to send to the API endpoint
for the get user dlc by platform operation typically these are written to a http.Request
*/
type GetUserDLCByPlatformParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*Type*/
	Type string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) WithTimeout(timeout time.Duration) *GetUserDLCByPlatformParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) WithContext(ctx context.Context) *GetUserDLCByPlatformParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) WithHTTPClient(client *http.Client) *GetUserDLCByPlatformParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) WithNamespace(namespace string) *GetUserDLCByPlatformParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) WithUserID(userID string) *GetUserDLCByPlatformParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithType adds the typeVar to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) WithType(typeVar string) *GetUserDLCByPlatformParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the get user dlc by platform params
func (o *GetUserDLCByPlatformParams) SetType(typeVar string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserDLCByPlatformParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// query param type
	qrType := o.Type
	qType := qrType
	if qType != "" {
		if err := r.SetQueryParam("type", qType); err != nil {
			return err
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
