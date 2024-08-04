// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

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

// NewRevokeItemsParams creates a new RevokeItemsParams object
// with the default values initialized.
func NewRevokeItemsParams() *RevokeItemsParams {
	var ()
	return &RevokeItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeItemsParamsWithTimeout creates a new RevokeItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeItemsParamsWithTimeout(timeout time.Duration) *RevokeItemsParams {
	var ()
	return &RevokeItemsParams{

		timeout: timeout,
	}
}

// NewRevokeItemsParamsWithContext creates a new RevokeItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeItemsParamsWithContext(ctx context.Context) *RevokeItemsParams {
	var ()
	return &RevokeItemsParams{

		Context: ctx,
	}
}

// NewRevokeItemsParamsWithHTTPClient creates a new RevokeItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeItemsParamsWithHTTPClient(client *http.Client) *RevokeItemsParams {
	var ()
	return &RevokeItemsParams{
		HTTPClient: client,
	}
}

/*RevokeItemsParams contains all the parameters to send to the API endpoint
for the revoke items operation typically these are written to a http.Request
*/
type RevokeItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*TransactionID*/
	TransactionID string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the revoke items params
func (o *RevokeItemsParams) WithTimeout(timeout time.Duration) *RevokeItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke items params
func (o *RevokeItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke items params
func (o *RevokeItemsParams) WithContext(ctx context.Context) *RevokeItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke items params
func (o *RevokeItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke items params
func (o *RevokeItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke items params
func (o *RevokeItemsParams) WithHTTPClient(client *http.Client) *RevokeItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke items params
func (o *RevokeItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke items params
func (o *RevokeItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RevokeItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the revoke items params
func (o *RevokeItemsParams) WithNamespace(namespace string) *RevokeItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the revoke items params
func (o *RevokeItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTransactionID adds the transactionID to the revoke items params
func (o *RevokeItemsParams) WithTransactionID(transactionID string) *RevokeItemsParams {
	o.SetTransactionID(transactionID)
	return o
}

// SetTransactionID adds the transactionId to the revoke items params
func (o *RevokeItemsParams) SetTransactionID(transactionID string) {
	o.TransactionID = transactionID
}

// WithUserID adds the userID to the revoke items params
func (o *RevokeItemsParams) WithUserID(userID string) *RevokeItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the revoke items params
func (o *RevokeItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param transactionId
	if err := r.SetPathParam("transactionId", o.TransactionID); err != nil {
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
