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

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewPublicGetUserOrderHistoriesParams creates a new PublicGetUserOrderHistoriesParams object
// with the default values initialized.
func NewPublicGetUserOrderHistoriesParams() *PublicGetUserOrderHistoriesParams {
	var ()
	return &PublicGetUserOrderHistoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserOrderHistoriesParamsWithTimeout creates a new PublicGetUserOrderHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserOrderHistoriesParamsWithTimeout(timeout time.Duration) *PublicGetUserOrderHistoriesParams {
	var ()
	return &PublicGetUserOrderHistoriesParams{

		timeout: timeout,
	}
}

// NewPublicGetUserOrderHistoriesParamsWithContext creates a new PublicGetUserOrderHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserOrderHistoriesParamsWithContext(ctx context.Context) *PublicGetUserOrderHistoriesParams {
	var ()
	return &PublicGetUserOrderHistoriesParams{

		Context: ctx,
	}
}

// NewPublicGetUserOrderHistoriesParamsWithHTTPClient creates a new PublicGetUserOrderHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserOrderHistoriesParamsWithHTTPClient(client *http.Client) *PublicGetUserOrderHistoriesParams {
	var ()
	return &PublicGetUserOrderHistoriesParams{
		HTTPClient: client,
	}
}

/*PublicGetUserOrderHistoriesParams contains all the parameters to send to the API endpoint
for the public get user order histories operation typically these are written to a http.Request
*/
type PublicGetUserOrderHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) WithTimeout(timeout time.Duration) *PublicGetUserOrderHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) WithContext(ctx context.Context) *PublicGetUserOrderHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) WithHTTPClient(client *http.Client) *PublicGetUserOrderHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) WithNamespace(namespace string) *PublicGetUserOrderHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrderNo adds the orderNo to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) WithOrderNo(orderNo string) *PublicGetUserOrderHistoriesParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WithUserID adds the userID to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) WithUserID(userID string) *PublicGetUserOrderHistoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user order histories params
func (o *PublicGetUserOrderHistoriesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserOrderHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
