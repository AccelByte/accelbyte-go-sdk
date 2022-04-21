// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package o_auth

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

// NewGetRevocationListParams creates a new GetRevocationListParams object
// with the default values initialized.
func NewGetRevocationListParams() *GetRevocationListParams {

	return &GetRevocationListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRevocationListParamsWithTimeout creates a new GetRevocationListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRevocationListParamsWithTimeout(timeout time.Duration) *GetRevocationListParams {

	return &GetRevocationListParams{

		timeout: timeout,
	}
}

// NewGetRevocationListParamsWithContext creates a new GetRevocationListParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRevocationListParamsWithContext(ctx context.Context) *GetRevocationListParams {

	return &GetRevocationListParams{

		Context: ctx,
	}
}

// NewGetRevocationListParamsWithHTTPClient creates a new GetRevocationListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRevocationListParamsWithHTTPClient(client *http.Client) *GetRevocationListParams {

	return &GetRevocationListParams{
		HTTPClient: client,
	}
}

/*GetRevocationListParams contains all the parameters to send to the API endpoint
for the get revocation list operation typically these are written to a http.Request
*/
type GetRevocationListParams struct {
	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the get revocation list params
func (o *GetRevocationListParams) WithTimeout(timeout time.Duration) *GetRevocationListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get revocation list params
func (o *GetRevocationListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get revocation list params
func (o *GetRevocationListParams) WithContext(ctx context.Context) *GetRevocationListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get revocation list params
func (o *GetRevocationListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the get revocation list params
func (o *GetRevocationListParams) WithHTTPClient(client *http.Client) *GetRevocationListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get revocation list params
func (o *GetRevocationListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WriteToRequest writes these params to a swagger request
func (o *GetRevocationListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
