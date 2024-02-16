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
)

// NewDeleteQueueParams creates a new DeleteQueueParams object
// with the default values initialized.
func NewDeleteQueueParams() *DeleteQueueParams {
	var ()
	return &DeleteQueueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteQueueParamsWithTimeout creates a new DeleteQueueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteQueueParamsWithTimeout(timeout time.Duration) *DeleteQueueParams {
	var ()
	return &DeleteQueueParams{

		timeout: timeout,
	}
}

// NewDeleteQueueParamsWithContext creates a new DeleteQueueParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteQueueParamsWithContext(ctx context.Context) *DeleteQueueParams {
	var ()
	return &DeleteQueueParams{

		Context: ctx,
	}
}

// NewDeleteQueueParamsWithHTTPClient creates a new DeleteQueueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteQueueParamsWithHTTPClient(client *http.Client) *DeleteQueueParams {
	var ()
	return &DeleteQueueParams{
		HTTPClient: client,
	}
}

/*DeleteQueueParams contains all the parameters to send to the API endpoint
for the delete queue operation typically these are written to a http.Request
*/
type DeleteQueueParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*NodeIP
	  IP Address of the node doing the upload process

	*/
	NodeIP string
	/*PodName
	  Pod Name of the DS who owns the artifact

	*/
	PodName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete queue params
func (o *DeleteQueueParams) WithTimeout(timeout time.Duration) *DeleteQueueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete queue params
func (o *DeleteQueueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete queue params
func (o *DeleteQueueParams) WithContext(ctx context.Context) *DeleteQueueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete queue params
func (o *DeleteQueueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete queue params
func (o *DeleteQueueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete queue params
func (o *DeleteQueueParams) WithHTTPClient(client *http.Client) *DeleteQueueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete queue params
func (o *DeleteQueueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete queue params
func (o *DeleteQueueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteQueueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete queue params
func (o *DeleteQueueParams) WithNamespace(namespace string) *DeleteQueueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete queue params
func (o *DeleteQueueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithNodeIP adds the nodeIP to the delete queue params
func (o *DeleteQueueParams) WithNodeIP(nodeIP string) *DeleteQueueParams {
	o.SetNodeIP(nodeIP)
	return o
}

// SetNodeIP adds the nodeIp to the delete queue params
func (o *DeleteQueueParams) SetNodeIP(nodeIP string) {
	o.NodeIP = nodeIP
}

// WithPodName adds the podName to the delete queue params
func (o *DeleteQueueParams) WithPodName(podName string) *DeleteQueueParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the delete queue params
func (o *DeleteQueueParams) SetPodName(podName string) {
	o.PodName = podName
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteQueueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param nodeIP
	qrNodeIP := o.NodeIP
	qNodeIP := qrNodeIP
	if qNodeIP != "" {
		if err := r.SetQueryParam("nodeIP", qNodeIP); err != nil {
			return err
		}
	}

	// query param podName
	qrPodName := o.PodName
	qPodName := qrPodName
	if qPodName != "" {
		if err := r.SetQueryParam("podName", qPodName); err != nil {
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
