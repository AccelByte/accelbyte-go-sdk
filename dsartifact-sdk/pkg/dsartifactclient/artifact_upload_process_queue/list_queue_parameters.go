// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifact_upload_process_queue

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

// NewListQueueParams creates a new ListQueueParams object
// with the default values initialized.
func NewListQueueParams() *ListQueueParams {
	var (
		limitDefault = int64(20)
	)
	return &ListQueueParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListQueueParamsWithTimeout creates a new ListQueueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListQueueParamsWithTimeout(timeout time.Duration) *ListQueueParams {
	var (
		limitDefault = int64(20)
	)
	return &ListQueueParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewListQueueParamsWithContext creates a new ListQueueParams object
// with the default values initialized, and the ability to set a context for a request
func NewListQueueParamsWithContext(ctx context.Context) *ListQueueParams {
	var (
		limitDefault = int64(20)
	)
	return &ListQueueParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewListQueueParamsWithHTTPClient creates a new ListQueueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListQueueParamsWithHTTPClient(client *http.Client) *ListQueueParams {
	var (
		limitDefault = int64(20)
	)
	return &ListQueueParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*ListQueueParams contains all the parameters to send to the API endpoint
for the list queue operation typically these are written to a http.Request
*/
type ListQueueParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Limit
	  limit

	*/
	Limit *int64
	/*Next
	  next

	*/
	Next *string
	/*Previous
	  previous

	*/
	Previous *string
	/*NodeIP
	  IP Address of the node doing the upload process

	*/
	NodeIP string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list queue params
func (o *ListQueueParams) WithTimeout(timeout time.Duration) *ListQueueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list queue params
func (o *ListQueueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list queue params
func (o *ListQueueParams) WithContext(ctx context.Context) *ListQueueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list queue params
func (o *ListQueueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list queue params
func (o *ListQueueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list queue params
func (o *ListQueueParams) WithHTTPClient(client *http.Client) *ListQueueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list queue params
func (o *ListQueueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list queue params
func (o *ListQueueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListQueueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLimit adds the limit to the list queue params
func (o *ListQueueParams) WithLimit(limit *int64) *ListQueueParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list queue params
func (o *ListQueueParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNext adds the nextVar to the list queue params
func (o *ListQueueParams) WithNext(nextVar *string) *ListQueueParams {
	o.SetNext(nextVar)
	return o
}

// SetNext adds the next to the list queue params
func (o *ListQueueParams) SetNext(nextVar *string) {
	o.Next = nextVar
}

// WithPrevious adds the previous to the list queue params
func (o *ListQueueParams) WithPrevious(previous *string) *ListQueueParams {
	o.SetPrevious(previous)
	return o
}

// SetPrevious adds the previous to the list queue params
func (o *ListQueueParams) SetPrevious(previous *string) {
	o.Previous = previous
}

// WithNodeIP adds the nodeIP to the list queue params
func (o *ListQueueParams) WithNodeIP(nodeIP string) *ListQueueParams {
	o.SetNodeIP(nodeIP)
	return o
}

// SetNodeIP adds the nodeIp to the list queue params
func (o *ListQueueParams) SetNodeIP(nodeIP string) {
	o.NodeIP = nodeIP
}

// WriteToRequest writes these params to a swagger request
func (o *ListQueueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if o.Next != nil {

		// query param next
		var qrNext string
		if o.Next != nil {
			qrNext = *o.Next
		}
		qNext := qrNext
		if qNext != "" {
			if err := r.SetQueryParam("next", qNext); err != nil {
				return err
			}
		}

	}

	if o.Previous != nil {

		// query param previous
		var qrPrevious string
		if o.Previous != nil {
			qrPrevious = *o.Previous
		}
		qPrevious := qrPrevious
		if qPrevious != "" {
			if err := r.SetQueryParam("previous", qPrevious); err != nil {
				return err
			}
		}

	}

	// query param nodeIP
	qrNodeIP := o.NodeIP
	qNodeIP := qrNodeIP
	if qNodeIP != "" {
		if err := r.SetQueryParam("nodeIP", qNodeIP); err != nil {
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
