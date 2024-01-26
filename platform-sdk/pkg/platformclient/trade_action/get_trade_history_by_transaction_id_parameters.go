// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package trade_action

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

// NewGetTradeHistoryByTransactionIDParams creates a new GetTradeHistoryByTransactionIDParams object
// with the default values initialized.
func NewGetTradeHistoryByTransactionIDParams() *GetTradeHistoryByTransactionIDParams {
	var ()
	return &GetTradeHistoryByTransactionIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetTradeHistoryByTransactionIDParamsWithTimeout creates a new GetTradeHistoryByTransactionIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetTradeHistoryByTransactionIDParamsWithTimeout(timeout time.Duration) *GetTradeHistoryByTransactionIDParams {
	var ()
	return &GetTradeHistoryByTransactionIDParams{

		timeout: timeout,
	}
}

// NewGetTradeHistoryByTransactionIDParamsWithContext creates a new GetTradeHistoryByTransactionIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetTradeHistoryByTransactionIDParamsWithContext(ctx context.Context) *GetTradeHistoryByTransactionIDParams {
	var ()
	return &GetTradeHistoryByTransactionIDParams{

		Context: ctx,
	}
}

// NewGetTradeHistoryByTransactionIDParamsWithHTTPClient creates a new GetTradeHistoryByTransactionIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetTradeHistoryByTransactionIDParamsWithHTTPClient(client *http.Client) *GetTradeHistoryByTransactionIDParams {
	var ()
	return &GetTradeHistoryByTransactionIDParams{
		HTTPClient: client,
	}
}

/*GetTradeHistoryByTransactionIDParams contains all the parameters to send to the API endpoint
for the get trade history by transaction id operation typically these are written to a http.Request
*/
type GetTradeHistoryByTransactionIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*TransactionID
	  Transaction ID to query the trade history

	*/
	TransactionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) WithTimeout(timeout time.Duration) *GetTradeHistoryByTransactionIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) WithContext(ctx context.Context) *GetTradeHistoryByTransactionIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) WithHTTPClient(client *http.Client) *GetTradeHistoryByTransactionIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetTradeHistoryByTransactionIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) WithNamespace(namespace string) *GetTradeHistoryByTransactionIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTransactionID adds the transactionID to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) WithTransactionID(transactionID string) *GetTradeHistoryByTransactionIDParams {
	o.SetTransactionID(transactionID)
	return o
}

// SetTransactionID adds the transactionId to the get trade history by transaction id params
func (o *GetTradeHistoryByTransactionIDParams) SetTransactionID(transactionID string) {
	o.TransactionID = transactionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetTradeHistoryByTransactionIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
