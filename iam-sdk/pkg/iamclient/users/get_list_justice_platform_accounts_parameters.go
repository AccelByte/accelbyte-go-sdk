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

// NewGetListJusticePlatformAccountsParams creates a new GetListJusticePlatformAccountsParams object
// with the default values initialized.
func NewGetListJusticePlatformAccountsParams() *GetListJusticePlatformAccountsParams {
	var ()
	return &GetListJusticePlatformAccountsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetListJusticePlatformAccountsParamsWithTimeout creates a new GetListJusticePlatformAccountsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetListJusticePlatformAccountsParamsWithTimeout(timeout time.Duration) *GetListJusticePlatformAccountsParams {
	var ()
	return &GetListJusticePlatformAccountsParams{

		timeout: timeout,
	}
}

// NewGetListJusticePlatformAccountsParamsWithContext creates a new GetListJusticePlatformAccountsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetListJusticePlatformAccountsParamsWithContext(ctx context.Context) *GetListJusticePlatformAccountsParams {
	var ()
	return &GetListJusticePlatformAccountsParams{

		Context: ctx,
	}
}

// NewGetListJusticePlatformAccountsParamsWithHTTPClient creates a new GetListJusticePlatformAccountsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetListJusticePlatformAccountsParamsWithHTTPClient(client *http.Client) *GetListJusticePlatformAccountsParams {
	var ()
	return &GetListJusticePlatformAccountsParams{
		HTTPClient: client,
	}
}

/*GetListJusticePlatformAccountsParams contains all the parameters to send to the API endpoint
for the get list justice platform accounts operation typically these are written to a http.Request
*/
type GetListJusticePlatformAccountsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  Publisher User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) WithTimeout(timeout time.Duration) *GetListJusticePlatformAccountsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) WithContext(ctx context.Context) *GetListJusticePlatformAccountsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) WithHTTPClient(client *http.Client) *GetListJusticePlatformAccountsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) WithNamespace(namespace string) *GetListJusticePlatformAccountsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) WithUserID(userID string) *GetListJusticePlatformAccountsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get list justice platform accounts params
func (o *GetListJusticePlatformAccountsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetListJusticePlatformAccountsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
