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

// NewRevokeItemsV3Params creates a new RevokeItemsV3Params object
// with the default values initialized.
func NewRevokeItemsV3Params() *RevokeItemsV3Params {
	var ()
	return &RevokeItemsV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeItemsV3ParamsWithTimeout creates a new RevokeItemsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeItemsV3ParamsWithTimeout(timeout time.Duration) *RevokeItemsV3Params {
	var ()
	return &RevokeItemsV3Params{

		timeout: timeout,
	}
}

// NewRevokeItemsV3ParamsWithContext creates a new RevokeItemsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeItemsV3ParamsWithContext(ctx context.Context) *RevokeItemsV3Params {
	var ()
	return &RevokeItemsV3Params{

		Context: ctx,
	}
}

// NewRevokeItemsV3ParamsWithHTTPClient creates a new RevokeItemsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeItemsV3ParamsWithHTTPClient(client *http.Client) *RevokeItemsV3Params {
	var ()
	return &RevokeItemsV3Params{
		HTTPClient: client,
	}
}

/*RevokeItemsV3Params contains all the parameters to send to the API endpoint
for the revoke items v3 operation typically these are written to a http.Request
*/
type RevokeItemsV3Params struct {

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

// WithTimeout adds the timeout to the revoke items v3 params
func (o *RevokeItemsV3Params) WithTimeout(timeout time.Duration) *RevokeItemsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke items v3 params
func (o *RevokeItemsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke items v3 params
func (o *RevokeItemsV3Params) WithContext(ctx context.Context) *RevokeItemsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke items v3 params
func (o *RevokeItemsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke items v3 params
func (o *RevokeItemsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke items v3 params
func (o *RevokeItemsV3Params) WithHTTPClient(client *http.Client) *RevokeItemsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke items v3 params
func (o *RevokeItemsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke items v3 params
func (o *RevokeItemsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RevokeItemsV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the revoke items v3 params
func (o *RevokeItemsV3Params) WithNamespace(namespace string) *RevokeItemsV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the revoke items v3 params
func (o *RevokeItemsV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTransactionID adds the transactionID to the revoke items v3 params
func (o *RevokeItemsV3Params) WithTransactionID(transactionID string) *RevokeItemsV3Params {
	o.SetTransactionID(transactionID)
	return o
}

// SetTransactionID adds the transactionId to the revoke items v3 params
func (o *RevokeItemsV3Params) SetTransactionID(transactionID string) {
	o.TransactionID = transactionID
}

// WithUserID adds the userID to the revoke items v3 params
func (o *RevokeItemsV3Params) WithUserID(userID string) *RevokeItemsV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the revoke items v3 params
func (o *RevokeItemsV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeItemsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
