// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewAdminGetIAPOrderLineItemsParams creates a new AdminGetIAPOrderLineItemsParams object
// with the default values initialized.
func NewAdminGetIAPOrderLineItemsParams() *AdminGetIAPOrderLineItemsParams {
	var ()
	return &AdminGetIAPOrderLineItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetIAPOrderLineItemsParamsWithTimeout creates a new AdminGetIAPOrderLineItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetIAPOrderLineItemsParamsWithTimeout(timeout time.Duration) *AdminGetIAPOrderLineItemsParams {
	var ()
	return &AdminGetIAPOrderLineItemsParams{

		timeout: timeout,
	}
}

// NewAdminGetIAPOrderLineItemsParamsWithContext creates a new AdminGetIAPOrderLineItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetIAPOrderLineItemsParamsWithContext(ctx context.Context) *AdminGetIAPOrderLineItemsParams {
	var ()
	return &AdminGetIAPOrderLineItemsParams{

		Context: ctx,
	}
}

// NewAdminGetIAPOrderLineItemsParamsWithHTTPClient creates a new AdminGetIAPOrderLineItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetIAPOrderLineItemsParamsWithHTTPClient(client *http.Client) *AdminGetIAPOrderLineItemsParams {
	var ()
	return &AdminGetIAPOrderLineItemsParams{
		HTTPClient: client,
	}
}

/*AdminGetIAPOrderLineItemsParams contains all the parameters to send to the API endpoint
for the admin get iap order line items operation typically these are written to a http.Request
*/
type AdminGetIAPOrderLineItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*IAPOrderNo*/
	IAPOrderNo string
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) WithTimeout(timeout time.Duration) *AdminGetIAPOrderLineItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) WithContext(ctx context.Context) *AdminGetIAPOrderLineItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) WithHTTPClient(client *http.Client) *AdminGetIAPOrderLineItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetIAPOrderLineItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithIAPOrderNo adds the iAPOrderNo to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) WithIAPOrderNo(iAPOrderNo string) *AdminGetIAPOrderLineItemsParams {
	o.SetIAPOrderNo(iAPOrderNo)
	return o
}

// SetIAPOrderNo adds the iapOrderNo to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) SetIAPOrderNo(iAPOrderNo string) {
	o.IAPOrderNo = iAPOrderNo
}

// WithNamespace adds the namespace to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) WithNamespace(namespace string) *AdminGetIAPOrderLineItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) WithUserID(userID string) *AdminGetIAPOrderLineItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get iap order line items params
func (o *AdminGetIAPOrderLineItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetIAPOrderLineItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param iapOrderNo
	if err := r.SetPathParam("iapOrderNo", o.IAPOrderNo); err != nil {
		return err
	}

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
