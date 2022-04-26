// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewListConfigParams creates a new ListConfigParams object
// with the default values initialized.
func NewListConfigParams() *ListConfigParams {

	return &ListConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListConfigParamsWithTimeout creates a new ListConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListConfigParamsWithTimeout(timeout time.Duration) *ListConfigParams {

	return &ListConfigParams{

		timeout: timeout,
	}
}

// NewListConfigParamsWithContext creates a new ListConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewListConfigParamsWithContext(ctx context.Context) *ListConfigParams {

	return &ListConfigParams{

		Context: ctx,
	}
}

// NewListConfigParamsWithHTTPClient creates a new ListConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListConfigParamsWithHTTPClient(client *http.Client) *ListConfigParams {

	return &ListConfigParams{
		HTTPClient: client,
	}
}

/*ListConfigParams contains all the parameters to send to the API endpoint
for the list config operation typically these are written to a http.Request
*/
type ListConfigParams struct {
	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the list config params
func (o *ListConfigParams) WithTimeout(timeout time.Duration) *ListConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list config params
func (o *ListConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list config params
func (o *ListConfigParams) WithContext(ctx context.Context) *ListConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list config params
func (o *ListConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list config params
func (o *ListConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list config params
func (o *ListConfigParams) WithHTTPClient(client *http.Client) *ListConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list config params
func (o *ListConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WriteToRequest writes these params to a swagger request
func (o *ListConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
