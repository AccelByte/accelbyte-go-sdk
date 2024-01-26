// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment

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

// NewListExtOrderNoByExtTxIDParams creates a new ListExtOrderNoByExtTxIDParams object
// with the default values initialized.
func NewListExtOrderNoByExtTxIDParams() *ListExtOrderNoByExtTxIDParams {
	var ()
	return &ListExtOrderNoByExtTxIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListExtOrderNoByExtTxIDParamsWithTimeout creates a new ListExtOrderNoByExtTxIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListExtOrderNoByExtTxIDParamsWithTimeout(timeout time.Duration) *ListExtOrderNoByExtTxIDParams {
	var ()
	return &ListExtOrderNoByExtTxIDParams{

		timeout: timeout,
	}
}

// NewListExtOrderNoByExtTxIDParamsWithContext creates a new ListExtOrderNoByExtTxIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewListExtOrderNoByExtTxIDParamsWithContext(ctx context.Context) *ListExtOrderNoByExtTxIDParams {
	var ()
	return &ListExtOrderNoByExtTxIDParams{

		Context: ctx,
	}
}

// NewListExtOrderNoByExtTxIDParamsWithHTTPClient creates a new ListExtOrderNoByExtTxIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListExtOrderNoByExtTxIDParamsWithHTTPClient(client *http.Client) *ListExtOrderNoByExtTxIDParams {
	var ()
	return &ListExtOrderNoByExtTxIDParams{
		HTTPClient: client,
	}
}

/*ListExtOrderNoByExtTxIDParams contains all the parameters to send to the API endpoint
for the list ext order no by ext tx id operation typically these are written to a http.Request
*/
type ListExtOrderNoByExtTxIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ExtTxID*/
	ExtTxID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) WithTimeout(timeout time.Duration) *ListExtOrderNoByExtTxIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) WithContext(ctx context.Context) *ListExtOrderNoByExtTxIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) WithHTTPClient(client *http.Client) *ListExtOrderNoByExtTxIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListExtOrderNoByExtTxIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) WithNamespace(namespace string) *ListExtOrderNoByExtTxIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithExtTxID adds the extTxID to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) WithExtTxID(extTxID string) *ListExtOrderNoByExtTxIDParams {
	o.SetExtTxID(extTxID)
	return o
}

// SetExtTxID adds the extTxId to the list ext order no by ext tx id params
func (o *ListExtOrderNoByExtTxIDParams) SetExtTxID(extTxID string) {
	o.ExtTxID = extTxID
}

// WriteToRequest writes these params to a swagger request
func (o *ListExtOrderNoByExtTxIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param extTxId
	qrExtTxID := o.ExtTxID
	qExtTxID := qrExtTxID
	if qExtTxID != "" {
		if err := r.SetQueryParam("extTxId", qExtTxID); err != nil {
			return err
		}
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
