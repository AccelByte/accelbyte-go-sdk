// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fleets

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// NewBulkFleetDeleteParams creates a new BulkFleetDeleteParams object
// with the default values initialized.
func NewBulkFleetDeleteParams() *BulkFleetDeleteParams {
	var ()
	return &BulkFleetDeleteParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkFleetDeleteParamsWithTimeout creates a new BulkFleetDeleteParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkFleetDeleteParamsWithTimeout(timeout time.Duration) *BulkFleetDeleteParams {
	var ()
	return &BulkFleetDeleteParams{

		timeout: timeout,
	}
}

// NewBulkFleetDeleteParamsWithContext creates a new BulkFleetDeleteParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkFleetDeleteParamsWithContext(ctx context.Context) *BulkFleetDeleteParams {
	var ()
	return &BulkFleetDeleteParams{

		Context: ctx,
	}
}

// NewBulkFleetDeleteParamsWithHTTPClient creates a new BulkFleetDeleteParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkFleetDeleteParamsWithHTTPClient(client *http.Client) *BulkFleetDeleteParams {
	var ()
	return &BulkFleetDeleteParams{
		HTTPClient: client,
	}
}

/*BulkFleetDeleteParams contains all the parameters to send to the API endpoint
for the bulk fleet delete operation typically these are written to a http.Request
*/
type BulkFleetDeleteParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIFleetBulkDeleteRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk fleet delete params
func (o *BulkFleetDeleteParams) WithTimeout(timeout time.Duration) *BulkFleetDeleteParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk fleet delete params
func (o *BulkFleetDeleteParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk fleet delete params
func (o *BulkFleetDeleteParams) WithContext(ctx context.Context) *BulkFleetDeleteParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk fleet delete params
func (o *BulkFleetDeleteParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk fleet delete params
func (o *BulkFleetDeleteParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk fleet delete params
func (o *BulkFleetDeleteParams) WithHTTPClient(client *http.Client) *BulkFleetDeleteParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk fleet delete params
func (o *BulkFleetDeleteParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk fleet delete params
func (o *BulkFleetDeleteParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkFleetDeleteParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk fleet delete params
func (o *BulkFleetDeleteParams) WithBody(body *amsclientmodels.APIFleetBulkDeleteRequest) *BulkFleetDeleteParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk fleet delete params
func (o *BulkFleetDeleteParams) SetBody(body *amsclientmodels.APIFleetBulkDeleteRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk fleet delete params
func (o *BulkFleetDeleteParams) WithNamespace(namespace string) *BulkFleetDeleteParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk fleet delete params
func (o *BulkFleetDeleteParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkFleetDeleteParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
