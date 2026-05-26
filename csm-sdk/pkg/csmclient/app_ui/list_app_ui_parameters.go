// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_ui

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewListAppUIParams creates a new ListAppUIParams object
// with the default values initialized.
func NewListAppUIParams() *ListAppUIParams {
	var ()
	return &ListAppUIParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListAppUIParamsWithTimeout creates a new ListAppUIParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListAppUIParamsWithTimeout(timeout time.Duration) *ListAppUIParams {
	var ()
	return &ListAppUIParams{

		timeout: timeout,
	}
}

// NewListAppUIParamsWithContext creates a new ListAppUIParams object
// with the default values initialized, and the ability to set a context for a request
func NewListAppUIParamsWithContext(ctx context.Context) *ListAppUIParams {
	var ()
	return &ListAppUIParams{

		Context: ctx,
	}
}

// NewListAppUIParamsWithHTTPClient creates a new ListAppUIParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListAppUIParamsWithHTTPClient(client *http.Client) *ListAppUIParams {
	var ()
	return &ListAppUIParams{
		HTTPClient: client,
	}
}

/*ListAppUIParams contains all the parameters to send to the API endpoint
for the list app ui operation typically these are written to a http.Request
*/
type ListAppUIParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Game Namespace

	*/
	Namespace string
	/*Limit
	  Limit for pagination

	*/
	Limit *int64
	/*Name
	  Filter by app UI name

	*/
	Name *string
	/*Offset
	  Offset for pagination

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list app ui params
func (o *ListAppUIParams) WithTimeout(timeout time.Duration) *ListAppUIParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list app ui params
func (o *ListAppUIParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list app ui params
func (o *ListAppUIParams) WithContext(ctx context.Context) *ListAppUIParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list app ui params
func (o *ListAppUIParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list app ui params
func (o *ListAppUIParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list app ui params
func (o *ListAppUIParams) WithHTTPClient(client *http.Client) *ListAppUIParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list app ui params
func (o *ListAppUIParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list app ui params
func (o *ListAppUIParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListAppUIParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list app ui params
func (o *ListAppUIParams) WithNamespace(namespace string) *ListAppUIParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list app ui params
func (o *ListAppUIParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the list app ui params
func (o *ListAppUIParams) WithLimit(limit *int64) *ListAppUIParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list app ui params
func (o *ListAppUIParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the list app ui params
func (o *ListAppUIParams) WithName(name *string) *ListAppUIParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the list app ui params
func (o *ListAppUIParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the list app ui params
func (o *ListAppUIParams) WithOffset(offset *int64) *ListAppUIParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list app ui params
func (o *ListAppUIParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *ListAppUIParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
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
