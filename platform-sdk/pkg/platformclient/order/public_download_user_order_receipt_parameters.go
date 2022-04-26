// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package order

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

// NewPublicDownloadUserOrderReceiptParams creates a new PublicDownloadUserOrderReceiptParams object
// with the default values initialized.
func NewPublicDownloadUserOrderReceiptParams() *PublicDownloadUserOrderReceiptParams {
	var ()
	return &PublicDownloadUserOrderReceiptParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDownloadUserOrderReceiptParamsWithTimeout creates a new PublicDownloadUserOrderReceiptParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDownloadUserOrderReceiptParamsWithTimeout(timeout time.Duration) *PublicDownloadUserOrderReceiptParams {
	var ()
	return &PublicDownloadUserOrderReceiptParams{

		timeout: timeout,
	}
}

// NewPublicDownloadUserOrderReceiptParamsWithContext creates a new PublicDownloadUserOrderReceiptParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDownloadUserOrderReceiptParamsWithContext(ctx context.Context) *PublicDownloadUserOrderReceiptParams {
	var ()
	return &PublicDownloadUserOrderReceiptParams{

		Context: ctx,
	}
}

// NewPublicDownloadUserOrderReceiptParamsWithHTTPClient creates a new PublicDownloadUserOrderReceiptParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDownloadUserOrderReceiptParamsWithHTTPClient(client *http.Client) *PublicDownloadUserOrderReceiptParams {
	var ()
	return &PublicDownloadUserOrderReceiptParams{
		HTTPClient: client,
	}
}

/*PublicDownloadUserOrderReceiptParams contains all the parameters to send to the API endpoint
for the public download user order receipt operation typically these are written to a http.Request
*/
type PublicDownloadUserOrderReceiptParams struct {

	/*Namespace*/
	Namespace string
	/*OrderNo*/
	OrderNo string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) WithTimeout(timeout time.Duration) *PublicDownloadUserOrderReceiptParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) WithContext(ctx context.Context) *PublicDownloadUserOrderReceiptParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) WithHTTPClient(client *http.Client) *PublicDownloadUserOrderReceiptParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) WithNamespace(namespace string) *PublicDownloadUserOrderReceiptParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrderNo adds the orderNo to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) WithOrderNo(orderNo string) *PublicDownloadUserOrderReceiptParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WithUserID adds the userID to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) WithUserID(userID string) *PublicDownloadUserOrderReceiptParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public download user order receipt params
func (o *PublicDownloadUserOrderReceiptParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDownloadUserOrderReceiptParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param orderNo
	if err := r.SetPathParam("orderNo", o.OrderNo); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
