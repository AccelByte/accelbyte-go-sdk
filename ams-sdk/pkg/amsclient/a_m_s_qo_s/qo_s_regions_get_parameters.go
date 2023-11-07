// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package a_m_s_qo_s

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

// NewQoSRegionsGetParams creates a new QoSRegionsGetParams object
// with the default values initialized.
func NewQoSRegionsGetParams() *QoSRegionsGetParams {
	var ()
	return &QoSRegionsGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQoSRegionsGetParamsWithTimeout creates a new QoSRegionsGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQoSRegionsGetParamsWithTimeout(timeout time.Duration) *QoSRegionsGetParams {
	var ()
	return &QoSRegionsGetParams{

		timeout: timeout,
	}
}

// NewQoSRegionsGetParamsWithContext creates a new QoSRegionsGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewQoSRegionsGetParamsWithContext(ctx context.Context) *QoSRegionsGetParams {
	var ()
	return &QoSRegionsGetParams{

		Context: ctx,
	}
}

// NewQoSRegionsGetParamsWithHTTPClient creates a new QoSRegionsGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQoSRegionsGetParamsWithHTTPClient(client *http.Client) *QoSRegionsGetParams {
	var ()
	return &QoSRegionsGetParams{
		HTTPClient: client,
	}
}

/*QoSRegionsGetParams contains all the parameters to send to the API endpoint
for the qo s regions get operation typically these are written to a http.Request
*/
type QoSRegionsGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Status
	  QoS status, available value: ACTIVE, INACTIVE

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the qo s regions get params
func (o *QoSRegionsGetParams) WithTimeout(timeout time.Duration) *QoSRegionsGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the qo s regions get params
func (o *QoSRegionsGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the qo s regions get params
func (o *QoSRegionsGetParams) WithContext(ctx context.Context) *QoSRegionsGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the qo s regions get params
func (o *QoSRegionsGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the qo s regions get params
func (o *QoSRegionsGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the qo s regions get params
func (o *QoSRegionsGetParams) WithHTTPClient(client *http.Client) *QoSRegionsGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the qo s regions get params
func (o *QoSRegionsGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the qo s regions get params
func (o *QoSRegionsGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the qo s regions get params
func (o *QoSRegionsGetParams) WithNamespace(namespace string) *QoSRegionsGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the qo s regions get params
func (o *QoSRegionsGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatus adds the status to the qo s regions get params
func (o *QoSRegionsGetParams) WithStatus(status *string) *QoSRegionsGetParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the qo s regions get params
func (o *QoSRegionsGetParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *QoSRegionsGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
