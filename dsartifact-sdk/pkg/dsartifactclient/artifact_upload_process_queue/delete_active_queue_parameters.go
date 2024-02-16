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

// NewDeleteActiveQueueParams creates a new DeleteActiveQueueParams object
// with the default values initialized.
func NewDeleteActiveQueueParams() *DeleteActiveQueueParams {
	var ()
	return &DeleteActiveQueueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteActiveQueueParamsWithTimeout creates a new DeleteActiveQueueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteActiveQueueParamsWithTimeout(timeout time.Duration) *DeleteActiveQueueParams {
	var ()
	return &DeleteActiveQueueParams{

		timeout: timeout,
	}
}

// NewDeleteActiveQueueParamsWithContext creates a new DeleteActiveQueueParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteActiveQueueParamsWithContext(ctx context.Context) *DeleteActiveQueueParams {
	var ()
	return &DeleteActiveQueueParams{

		Context: ctx,
	}
}

// NewDeleteActiveQueueParamsWithHTTPClient creates a new DeleteActiveQueueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteActiveQueueParamsWithHTTPClient(client *http.Client) *DeleteActiveQueueParams {
	var ()
	return &DeleteActiveQueueParams{
		HTTPClient: client,
	}
}

/*DeleteActiveQueueParams contains all the parameters to send to the API endpoint
for the delete active queue operation typically these are written to a http.Request
*/
type DeleteActiveQueueParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the delete active queue params
func (o *DeleteActiveQueueParams) WithTimeout(timeout time.Duration) *DeleteActiveQueueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete active queue params
func (o *DeleteActiveQueueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete active queue params
func (o *DeleteActiveQueueParams) WithContext(ctx context.Context) *DeleteActiveQueueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete active queue params
func (o *DeleteActiveQueueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete active queue params
func (o *DeleteActiveQueueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete active queue params
func (o *DeleteActiveQueueParams) WithHTTPClient(client *http.Client) *DeleteActiveQueueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete active queue params
func (o *DeleteActiveQueueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete active queue params
func (o *DeleteActiveQueueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteActiveQueueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNodeIP adds the nodeIP to the delete active queue params
func (o *DeleteActiveQueueParams) WithNodeIP(nodeIP string) *DeleteActiveQueueParams {
	o.SetNodeIP(nodeIP)
	return o
}

// SetNodeIP adds the nodeIp to the delete active queue params
func (o *DeleteActiveQueueParams) SetNodeIP(nodeIP string) {
	o.NodeIP = nodeIP
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteActiveQueueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
