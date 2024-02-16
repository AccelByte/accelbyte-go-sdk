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

// NewListAllActiveQueueParams creates a new ListAllActiveQueueParams object
// with the default values initialized.
func NewListAllActiveQueueParams() *ListAllActiveQueueParams {
	var (
		limitDefault = int64(20)
	)
	return &ListAllActiveQueueParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListAllActiveQueueParamsWithTimeout creates a new ListAllActiveQueueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListAllActiveQueueParamsWithTimeout(timeout time.Duration) *ListAllActiveQueueParams {
	var (
		limitDefault = int64(20)
	)
	return &ListAllActiveQueueParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewListAllActiveQueueParamsWithContext creates a new ListAllActiveQueueParams object
// with the default values initialized, and the ability to set a context for a request
func NewListAllActiveQueueParamsWithContext(ctx context.Context) *ListAllActiveQueueParams {
	var (
		limitDefault = int64(20)
	)
	return &ListAllActiveQueueParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewListAllActiveQueueParamsWithHTTPClient creates a new ListAllActiveQueueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListAllActiveQueueParamsWithHTTPClient(client *http.Client) *ListAllActiveQueueParams {
	var (
		limitDefault = int64(20)
	)
	return &ListAllActiveQueueParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*ListAllActiveQueueParams contains all the parameters to send to the API endpoint
for the list all active queue operation typically these are written to a http.Request
*/
type ListAllActiveQueueParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  limit

	*/
	Limit *int64
	/*Next
	  next

	*/
	Next *string
	/*NodeIP
	  IP Address of the node which the artifact located

	*/
	NodeIP *string
	/*PodName
	  Pod Name of the DS who owns the artifact

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

// WithTimeout adds the timeout to the list all active queue params
func (o *ListAllActiveQueueParams) WithTimeout(timeout time.Duration) *ListAllActiveQueueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list all active queue params
func (o *ListAllActiveQueueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list all active queue params
func (o *ListAllActiveQueueParams) WithContext(ctx context.Context) *ListAllActiveQueueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list all active queue params
func (o *ListAllActiveQueueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list all active queue params
func (o *ListAllActiveQueueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list all active queue params
func (o *ListAllActiveQueueParams) WithHTTPClient(client *http.Client) *ListAllActiveQueueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list all active queue params
func (o *ListAllActiveQueueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list all active queue params
func (o *ListAllActiveQueueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListAllActiveQueueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list all active queue params
func (o *ListAllActiveQueueParams) WithNamespace(namespace string) *ListAllActiveQueueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list all active queue params
func (o *ListAllActiveQueueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the list all active queue params
func (o *ListAllActiveQueueParams) WithLimit(limit *int64) *ListAllActiveQueueParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list all active queue params
func (o *ListAllActiveQueueParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNext adds the nextVar to the list all active queue params
func (o *ListAllActiveQueueParams) WithNext(nextVar *string) *ListAllActiveQueueParams {
	o.SetNext(nextVar)
	return o
}

// SetNext adds the next to the list all active queue params
func (o *ListAllActiveQueueParams) SetNext(nextVar *string) {
	o.Next = nextVar
}

// WithNodeIP adds the nodeIP to the list all active queue params
func (o *ListAllActiveQueueParams) WithNodeIP(nodeIP *string) *ListAllActiveQueueParams {
	o.SetNodeIP(nodeIP)
	return o
}

// SetNodeIP adds the nodeIp to the list all active queue params
func (o *ListAllActiveQueueParams) SetNodeIP(nodeIP *string) {
	o.NodeIP = nodeIP
}

// WithPodName adds the podName to the list all active queue params
func (o *ListAllActiveQueueParams) WithPodName(podName *string) *ListAllActiveQueueParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the list all active queue params
func (o *ListAllActiveQueueParams) SetPodName(podName *string) {
	o.PodName = podName
}

// WithPrevious adds the previous to the list all active queue params
func (o *ListAllActiveQueueParams) WithPrevious(previous *string) *ListAllActiveQueueParams {
	o.SetPrevious(previous)
	return o
}

// SetPrevious adds the previous to the list all active queue params
func (o *ListAllActiveQueueParams) SetPrevious(previous *string) {
	o.Previous = previous
}

// WriteToRequest writes these params to a swagger request
func (o *ListAllActiveQueueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.PodName != nil {

		// query param podName
		var qrPodName string
		if o.PodName != nil {
			qrPodName = *o.PodName
		}
		qPodName := qrPodName
		if qPodName != "" {
			if err := r.SetQueryParam("podName", qPodName); err != nil {
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
