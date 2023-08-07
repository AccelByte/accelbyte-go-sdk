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

// Get the enum in GetUserDLCParams
const (
	GetUserDLCEPICGAMESConstant = "EPICGAMES"
	GetUserDLCOCULUSConstant    = "OCULUS"
	GetUserDLCPSNConstant       = "PSN"
	GetUserDLCSTEAMConstant     = "STEAM"
	GetUserDLCXBOXConstant      = "XBOX"
)

// NewGetUserDLCParams creates a new GetUserDLCParams object
// with the default values initialized.
func NewGetUserDLCParams() *GetUserDLCParams {
	var ()
	return &GetUserDLCParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserDLCParamsWithTimeout creates a new GetUserDLCParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserDLCParamsWithTimeout(timeout time.Duration) *GetUserDLCParams {
	var ()
	return &GetUserDLCParams{

		timeout: timeout,
	}
}

// NewGetUserDLCParamsWithContext creates a new GetUserDLCParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserDLCParamsWithContext(ctx context.Context) *GetUserDLCParams {
	var ()
	return &GetUserDLCParams{

		Context: ctx,
	}
}

// NewGetUserDLCParamsWithHTTPClient creates a new GetUserDLCParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserDLCParamsWithHTTPClient(client *http.Client) *GetUserDLCParams {
	var ()
	return &GetUserDLCParams{
		HTTPClient: client,
	}
}

/*GetUserDLCParams contains all the parameters to send to the API endpoint
for the get user dlc operation typically these are written to a http.Request
*/
type GetUserDLCParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*Type*/
	Type *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user dlc params
func (o *GetUserDLCParams) WithTimeout(timeout time.Duration) *GetUserDLCParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user dlc params
func (o *GetUserDLCParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user dlc params
func (o *GetUserDLCParams) WithContext(ctx context.Context) *GetUserDLCParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user dlc params
func (o *GetUserDLCParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user dlc params
func (o *GetUserDLCParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user dlc params
func (o *GetUserDLCParams) WithHTTPClient(client *http.Client) *GetUserDLCParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user dlc params
func (o *GetUserDLCParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user dlc params
func (o *GetUserDLCParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user dlc params
func (o *GetUserDLCParams) WithNamespace(namespace string) *GetUserDLCParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user dlc params
func (o *GetUserDLCParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user dlc params
func (o *GetUserDLCParams) WithUserID(userID string) *GetUserDLCParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user dlc params
func (o *GetUserDLCParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithType adds the typeVar to the get user dlc params
func (o *GetUserDLCParams) WithType(typeVar *string) *GetUserDLCParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the get user dlc params
func (o *GetUserDLCParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserDLCParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
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
