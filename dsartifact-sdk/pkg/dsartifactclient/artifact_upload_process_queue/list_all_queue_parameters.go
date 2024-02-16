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

// NewListAllQueueParams creates a new ListAllQueueParams object
// with the default values initialized.
func NewListAllQueueParams() *ListAllQueueParams {
	var (
		limitDefault = int64(20)
		orderDefault = string("ASC")
	)
	return &ListAllQueueParams{
		Limit: &limitDefault,
		Order: &orderDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListAllQueueParamsWithTimeout creates a new ListAllQueueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListAllQueueParamsWithTimeout(timeout time.Duration) *ListAllQueueParams {
	var (
		limitDefault = int64(20)
		orderDefault = string("ASC")
	)
	return &ListAllQueueParams{
		Limit: &limitDefault,
		Order: &orderDefault,

		timeout: timeout,
	}
}

// NewListAllQueueParamsWithContext creates a new ListAllQueueParams object
// with the default values initialized, and the ability to set a context for a request
func NewListAllQueueParamsWithContext(ctx context.Context) *ListAllQueueParams {
	var (
		limitDefault = int64(20)
		orderDefault = string("ASC")
	)
	return &ListAllQueueParams{
		Limit: &limitDefault,
		Order: &orderDefault,

		Context: ctx,
	}
}

// NewListAllQueueParamsWithHTTPClient creates a new ListAllQueueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListAllQueueParamsWithHTTPClient(client *http.Client) *ListAllQueueParams {
	var (
		limitDefault = int64(20)
		orderDefault = string("ASC")
	)
	return &ListAllQueueParams{
		Limit:      &limitDefault,
		Order:      &orderDefault,
		HTTPClient: client,
	}
}

/*ListAllQueueParams contains all the parameters to send to the API endpoint
for the list all queue operation typically these are written to a http.Request
*/
type ListAllQueueParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ExcludeUploading
	  whether the response will exclude the currently uploading DSes or not

	*/
	ExcludeUploading *bool
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
	/*Order
	  order

	*/
	Order *string
	/*PodName
	  pod name of the server

	*/
	PodName *string
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

// WithTimeout adds the timeout to the list all queue params
func (o *ListAllQueueParams) WithTimeout(timeout time.Duration) *ListAllQueueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list all queue params
func (o *ListAllQueueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list all queue params
func (o *ListAllQueueParams) WithContext(ctx context.Context) *ListAllQueueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list all queue params
func (o *ListAllQueueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list all queue params
func (o *ListAllQueueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list all queue params
func (o *ListAllQueueParams) WithHTTPClient(client *http.Client) *ListAllQueueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list all queue params
func (o *ListAllQueueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list all queue params
func (o *ListAllQueueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListAllQueueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list all queue params
func (o *ListAllQueueParams) WithNamespace(namespace string) *ListAllQueueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list all queue params
func (o *ListAllQueueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithExcludeUploading adds the excludeUploading to the list all queue params
func (o *ListAllQueueParams) WithExcludeUploading(excludeUploading *bool) *ListAllQueueParams {
	o.SetExcludeUploading(excludeUploading)
	return o
}

// SetExcludeUploading adds the excludeUploading to the list all queue params
func (o *ListAllQueueParams) SetExcludeUploading(excludeUploading *bool) {
	o.ExcludeUploading = excludeUploading
}

// WithLimit adds the limit to the list all queue params
func (o *ListAllQueueParams) WithLimit(limit *int64) *ListAllQueueParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list all queue params
func (o *ListAllQueueParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNext adds the nextVar to the list all queue params
func (o *ListAllQueueParams) WithNext(nextVar *string) *ListAllQueueParams {
	o.SetNext(nextVar)
	return o
}

// SetNext adds the next to the list all queue params
func (o *ListAllQueueParams) SetNext(nextVar *string) {
	o.Next = nextVar
}

// WithNodeIP adds the nodeIP to the list all queue params
func (o *ListAllQueueParams) WithNodeIP(nodeIP *string) *ListAllQueueParams {
	o.SetNodeIP(nodeIP)
	return o
}

// SetNodeIP adds the nodeIp to the list all queue params
func (o *ListAllQueueParams) SetNodeIP(nodeIP *string) {
	o.NodeIP = nodeIP
}

// WithOrder adds the order to the list all queue params
func (o *ListAllQueueParams) WithOrder(order *string) *ListAllQueueParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the list all queue params
func (o *ListAllQueueParams) SetOrder(order *string) {
	o.Order = order
}

// WithPodName adds the podName to the list all queue params
func (o *ListAllQueueParams) WithPodName(podName *string) *ListAllQueueParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the list all queue params
func (o *ListAllQueueParams) SetPodName(podName *string) {
	o.PodName = podName
}

// WithPrevious adds the previous to the list all queue params
func (o *ListAllQueueParams) WithPrevious(previous *string) *ListAllQueueParams {
	o.SetPrevious(previous)
	return o
}

// SetPrevious adds the previous to the list all queue params
func (o *ListAllQueueParams) SetPrevious(previous *string) {
	o.Previous = previous
}

// WriteToRequest writes these params to a swagger request
func (o *ListAllQueueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ExcludeUploading != nil {

		// query param exclude_uploading
		var qrExcludeUploading bool
		if o.ExcludeUploading != nil {
			qrExcludeUploading = *o.ExcludeUploading
		}
		qExcludeUploading := swag.FormatBool(qrExcludeUploading)
		if qExcludeUploading != "" {
			if err := r.SetQueryParam("exclude_uploading", qExcludeUploading); err != nil {
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

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.PodName != nil {

		// query param pod_name
		var qrPodName string
		if o.PodName != nil {
			qrPodName = *o.PodName
		}
		qPodName := qrPodName
		if qPodName != "" {
			if err := r.SetQueryParam("pod_name", qPodName); err != nil {
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
