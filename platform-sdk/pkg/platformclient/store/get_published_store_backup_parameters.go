// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// NewGetPublishedStoreBackupParams creates a new GetPublishedStoreBackupParams object
// with the default values initialized.
func NewGetPublishedStoreBackupParams() *GetPublishedStoreBackupParams {
	var ()
	return &GetPublishedStoreBackupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPublishedStoreBackupParamsWithTimeout creates a new GetPublishedStoreBackupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPublishedStoreBackupParamsWithTimeout(timeout time.Duration) *GetPublishedStoreBackupParams {
	var ()
	return &GetPublishedStoreBackupParams{

		timeout: timeout,
	}
}

// NewGetPublishedStoreBackupParamsWithContext creates a new GetPublishedStoreBackupParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPublishedStoreBackupParamsWithContext(ctx context.Context) *GetPublishedStoreBackupParams {
	var ()
	return &GetPublishedStoreBackupParams{

		Context: ctx,
	}
}

// NewGetPublishedStoreBackupParamsWithHTTPClient creates a new GetPublishedStoreBackupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPublishedStoreBackupParamsWithHTTPClient(client *http.Client) *GetPublishedStoreBackupParams {
	var ()
	return &GetPublishedStoreBackupParams{
		HTTPClient: client,
	}
}

/*GetPublishedStoreBackupParams contains all the parameters to send to the API endpoint
for the get published store backup operation typically these are written to a http.Request
*/
type GetPublishedStoreBackupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get published store backup params
func (o *GetPublishedStoreBackupParams) WithTimeout(timeout time.Duration) *GetPublishedStoreBackupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get published store backup params
func (o *GetPublishedStoreBackupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get published store backup params
func (o *GetPublishedStoreBackupParams) WithContext(ctx context.Context) *GetPublishedStoreBackupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get published store backup params
func (o *GetPublishedStoreBackupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get published store backup params
func (o *GetPublishedStoreBackupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get published store backup params
func (o *GetPublishedStoreBackupParams) WithHTTPClient(client *http.Client) *GetPublishedStoreBackupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get published store backup params
func (o *GetPublishedStoreBackupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get published store backup params
func (o *GetPublishedStoreBackupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get published store backup params
func (o *GetPublishedStoreBackupParams) WithNamespace(namespace string) *GetPublishedStoreBackupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get published store backup params
func (o *GetPublishedStoreBackupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetPublishedStoreBackupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
