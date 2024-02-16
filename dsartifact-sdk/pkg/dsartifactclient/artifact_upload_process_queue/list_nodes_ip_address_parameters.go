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

// NewListNodesIPAddressParams creates a new ListNodesIPAddressParams object
// with the default values initialized.
func NewListNodesIPAddressParams() *ListNodesIPAddressParams {
	var (
		limitDefault = int64(20)
	)
	return &ListNodesIPAddressParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListNodesIPAddressParamsWithTimeout creates a new ListNodesIPAddressParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListNodesIPAddressParamsWithTimeout(timeout time.Duration) *ListNodesIPAddressParams {
	var (
		limitDefault = int64(20)
	)
	return &ListNodesIPAddressParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewListNodesIPAddressParamsWithContext creates a new ListNodesIPAddressParams object
// with the default values initialized, and the ability to set a context for a request
func NewListNodesIPAddressParamsWithContext(ctx context.Context) *ListNodesIPAddressParams {
	var (
		limitDefault = int64(20)
	)
	return &ListNodesIPAddressParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewListNodesIPAddressParamsWithHTTPClient creates a new ListNodesIPAddressParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListNodesIPAddressParamsWithHTTPClient(client *http.Client) *ListNodesIPAddressParams {
	var (
		limitDefault = int64(20)
	)
	return &ListNodesIPAddressParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*ListNodesIPAddressParams contains all the parameters to send to the API endpoint
for the list nodes ip address operation typically these are written to a http.Request
*/
type ListNodesIPAddressParams struct {

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
	/*NodeIP
	  IP Address of the node doing the upload process

	*/
	NodeIP *string
	/*Previous
	  previous

	*/
	Previous *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list nodes ip address params
func (o *ListNodesIPAddressParams) WithTimeout(timeout time.Duration) *ListNodesIPAddressParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list nodes ip address params
func (o *ListNodesIPAddressParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list nodes ip address params
func (o *ListNodesIPAddressParams) WithContext(ctx context.Context) *ListNodesIPAddressParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list nodes ip address params
func (o *ListNodesIPAddressParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list nodes ip address params
func (o *ListNodesIPAddressParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list nodes ip address params
func (o *ListNodesIPAddressParams) WithHTTPClient(client *http.Client) *ListNodesIPAddressParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list nodes ip address params
func (o *ListNodesIPAddressParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list nodes ip address params
func (o *ListNodesIPAddressParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListNodesIPAddressParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLimit adds the limit to the list nodes ip address params
func (o *ListNodesIPAddressParams) WithLimit(limit *int64) *ListNodesIPAddressParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list nodes ip address params
func (o *ListNodesIPAddressParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNext adds the nextVar to the list nodes ip address params
func (o *ListNodesIPAddressParams) WithNext(nextVar *string) *ListNodesIPAddressParams {
	o.SetNext(nextVar)
	return o
}

// SetNext adds the next to the list nodes ip address params
func (o *ListNodesIPAddressParams) SetNext(nextVar *string) {
	o.Next = nextVar
}

// WithNodeIP adds the nodeIP to the list nodes ip address params
func (o *ListNodesIPAddressParams) WithNodeIP(nodeIP *string) *ListNodesIPAddressParams {
	o.SetNodeIP(nodeIP)
	return o
}

// SetNodeIP adds the nodeIp to the list nodes ip address params
func (o *ListNodesIPAddressParams) SetNodeIP(nodeIP *string) {
	o.NodeIP = nodeIP
}

// WithPrevious adds the previous to the list nodes ip address params
func (o *ListNodesIPAddressParams) WithPrevious(previous *string) *ListNodesIPAddressParams {
	o.SetPrevious(previous)
	return o
}

// SetPrevious adds the previous to the list nodes ip address params
func (o *ListNodesIPAddressParams) SetPrevious(previous *string) {
	o.Previous = previous
}

// WriteToRequest writes these params to a swagger request
func (o *ListNodesIPAddressParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.NodeIP != nil {

		// query param nodeIP
		var qrNodeIP string
		if o.NodeIP != nil {
			qrNodeIP = *o.NodeIP
		}
		qNodeIP := qrNodeIP
		if qNodeIP != "" {
			if err := r.SetQueryParam("nodeIP", qNodeIP); err != nil {
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
