// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

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

// NewGetAllNotificationTopicsV1AdminParams creates a new GetAllNotificationTopicsV1AdminParams object
// with the default values initialized.
func NewGetAllNotificationTopicsV1AdminParams() *GetAllNotificationTopicsV1AdminParams {
	var ()
	return &GetAllNotificationTopicsV1AdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllNotificationTopicsV1AdminParamsWithTimeout creates a new GetAllNotificationTopicsV1AdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllNotificationTopicsV1AdminParamsWithTimeout(timeout time.Duration) *GetAllNotificationTopicsV1AdminParams {
	var ()
	return &GetAllNotificationTopicsV1AdminParams{

		timeout: timeout,
	}
}

// NewGetAllNotificationTopicsV1AdminParamsWithContext creates a new GetAllNotificationTopicsV1AdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllNotificationTopicsV1AdminParamsWithContext(ctx context.Context) *GetAllNotificationTopicsV1AdminParams {
	var ()
	return &GetAllNotificationTopicsV1AdminParams{

		Context: ctx,
	}
}

// NewGetAllNotificationTopicsV1AdminParamsWithHTTPClient creates a new GetAllNotificationTopicsV1AdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllNotificationTopicsV1AdminParamsWithHTTPClient(client *http.Client) *GetAllNotificationTopicsV1AdminParams {
	var ()
	return &GetAllNotificationTopicsV1AdminParams{
		HTTPClient: client,
	}
}

/*GetAllNotificationTopicsV1AdminParams contains all the parameters to send to the API endpoint
for the get all notification topics v1 admin operation typically these are written to a http.Request
*/
type GetAllNotificationTopicsV1AdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*After
	  last topic name of previous page

	*/
	After *string
	/*Before
	  first topic name of next page

	*/
	Before *string
	/*Limit
	  size of displayed data

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) WithTimeout(timeout time.Duration) *GetAllNotificationTopicsV1AdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) WithContext(ctx context.Context) *GetAllNotificationTopicsV1AdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) WithHTTPClient(client *http.Client) *GetAllNotificationTopicsV1AdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAllNotificationTopicsV1AdminParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) WithNamespace(namespace string) *GetAllNotificationTopicsV1AdminParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAfter adds the after to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) WithAfter(after *string) *GetAllNotificationTopicsV1AdminParams {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) WithBefore(before *string) *GetAllNotificationTopicsV1AdminParams {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) SetBefore(before *string) {
	o.Before = before
}

// WithLimit adds the limit to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) WithLimit(limit *int64) *GetAllNotificationTopicsV1AdminParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get all notification topics v1 admin params
func (o *GetAllNotificationTopicsV1AdminParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllNotificationTopicsV1AdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
				return err
			}
		}

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
