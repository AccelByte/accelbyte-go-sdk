// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package lobby_operations

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

// NewPublicGetMessagesParams creates a new PublicGetMessagesParams object
// with the default values initialized.
func NewPublicGetMessagesParams() *PublicGetMessagesParams {

	return &PublicGetMessagesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMessagesParamsWithTimeout creates a new PublicGetMessagesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMessagesParamsWithTimeout(timeout time.Duration) *PublicGetMessagesParams {

	return &PublicGetMessagesParams{

		timeout: timeout,
	}
}

// NewPublicGetMessagesParamsWithContext creates a new PublicGetMessagesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMessagesParamsWithContext(ctx context.Context) *PublicGetMessagesParams {

	return &PublicGetMessagesParams{

		Context: ctx,
	}
}

// NewPublicGetMessagesParamsWithHTTPClient creates a new PublicGetMessagesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMessagesParamsWithHTTPClient(client *http.Client) *PublicGetMessagesParams {

	return &PublicGetMessagesParams{
		HTTPClient: client,
	}
}

/*PublicGetMessagesParams contains all the parameters to send to the API endpoint
for the public get messages operation typically these are written to a http.Request
*/
type PublicGetMessagesParams struct {
	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get messages params
func (o *PublicGetMessagesParams) WithTimeout(timeout time.Duration) *PublicGetMessagesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get messages params
func (o *PublicGetMessagesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get messages params
func (o *PublicGetMessagesParams) WithContext(ctx context.Context) *PublicGetMessagesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get messages params
func (o *PublicGetMessagesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get messages params
func (o *PublicGetMessagesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get messages params
func (o *PublicGetMessagesParams) WithHTTPClient(client *http.Client) *PublicGetMessagesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get messages params
func (o *PublicGetMessagesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMessagesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}