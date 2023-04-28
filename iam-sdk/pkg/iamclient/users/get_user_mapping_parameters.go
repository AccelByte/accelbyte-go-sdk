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

// NewGetUserMappingParams creates a new GetUserMappingParams object
// with the default values initialized.
func NewGetUserMappingParams() *GetUserMappingParams {
	var ()
	return &GetUserMappingParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserMappingParamsWithTimeout creates a new GetUserMappingParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserMappingParamsWithTimeout(timeout time.Duration) *GetUserMappingParams {
	var ()
	return &GetUserMappingParams{

		timeout: timeout,
	}
}

// NewGetUserMappingParamsWithContext creates a new GetUserMappingParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserMappingParamsWithContext(ctx context.Context) *GetUserMappingParams {
	var ()
	return &GetUserMappingParams{

		Context: ctx,
	}
}

// NewGetUserMappingParamsWithHTTPClient creates a new GetUserMappingParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserMappingParamsWithHTTPClient(client *http.Client) *GetUserMappingParams {
	var ()
	return &GetUserMappingParams{
		HTTPClient: client,
	}
}

/*GetUserMappingParams contains all the parameters to send to the API endpoint
for the get user mapping operation typically these are written to a http.Request
*/
type GetUserMappingParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*TargetNamespace
	  Target namespace

	*/
	TargetNamespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user mapping params
func (o *GetUserMappingParams) WithTimeout(timeout time.Duration) *GetUserMappingParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user mapping params
func (o *GetUserMappingParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user mapping params
func (o *GetUserMappingParams) WithContext(ctx context.Context) *GetUserMappingParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user mapping params
func (o *GetUserMappingParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user mapping params
func (o *GetUserMappingParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user mapping params
func (o *GetUserMappingParams) WithHTTPClient(client *http.Client) *GetUserMappingParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user mapping params
func (o *GetUserMappingParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user mapping params
func (o *GetUserMappingParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user mapping params
func (o *GetUserMappingParams) WithNamespace(namespace string) *GetUserMappingParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user mapping params
func (o *GetUserMappingParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTargetNamespace adds the targetNamespace to the get user mapping params
func (o *GetUserMappingParams) WithTargetNamespace(targetNamespace string) *GetUserMappingParams {
	o.SetTargetNamespace(targetNamespace)
	return o
}

// SetTargetNamespace adds the targetNamespace to the get user mapping params
func (o *GetUserMappingParams) SetTargetNamespace(targetNamespace string) {
	o.TargetNamespace = targetNamespace
}

// WithUserID adds the userID to the get user mapping params
func (o *GetUserMappingParams) WithUserID(userID string) *GetUserMappingParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user mapping params
func (o *GetUserMappingParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserMappingParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param targetNamespace
	if err := r.SetPathParam("targetNamespace", o.TargetNamespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
