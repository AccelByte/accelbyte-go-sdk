// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
)

// NewUpdateServerConfigParams creates a new UpdateServerConfigParams object
// with the default values initialized.
func NewUpdateServerConfigParams() *UpdateServerConfigParams {
	var ()
	return &UpdateServerConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateServerConfigParamsWithTimeout creates a new UpdateServerConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateServerConfigParamsWithTimeout(timeout time.Duration) *UpdateServerConfigParams {
	var ()
	return &UpdateServerConfigParams{

		timeout: timeout,
	}
}

// NewUpdateServerConfigParamsWithContext creates a new UpdateServerConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateServerConfigParamsWithContext(ctx context.Context) *UpdateServerConfigParams {
	var ()
	return &UpdateServerConfigParams{

		Context: ctx,
	}
}

// NewUpdateServerConfigParamsWithHTTPClient creates a new UpdateServerConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateServerConfigParamsWithHTTPClient(client *http.Client) *UpdateServerConfigParams {
	var ()
	return &UpdateServerConfigParams{
		HTTPClient: client,
	}
}

/*UpdateServerConfigParams contains all the parameters to send to the API endpoint
for the update server config operation typically these are written to a http.Request
*/
type UpdateServerConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *qosmclientmodels.ModelsUpdateServerRequest
	/*Namespace
	  namespace of the QoS

	*/
	Namespace string
	/*Region
	  original region of the QoS

	*/
	Region string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update server config params
func (o *UpdateServerConfigParams) WithTimeout(timeout time.Duration) *UpdateServerConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update server config params
func (o *UpdateServerConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update server config params
func (o *UpdateServerConfigParams) WithContext(ctx context.Context) *UpdateServerConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update server config params
func (o *UpdateServerConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update server config params
func (o *UpdateServerConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update server config params
func (o *UpdateServerConfigParams) WithHTTPClient(client *http.Client) *UpdateServerConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update server config params
func (o *UpdateServerConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update server config params
func (o *UpdateServerConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateServerConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update server config params
func (o *UpdateServerConfigParams) WithBody(body *qosmclientmodels.ModelsUpdateServerRequest) *UpdateServerConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update server config params
func (o *UpdateServerConfigParams) SetBody(body *qosmclientmodels.ModelsUpdateServerRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update server config params
func (o *UpdateServerConfigParams) WithNamespace(namespace string) *UpdateServerConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update server config params
func (o *UpdateServerConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the update server config params
func (o *UpdateServerConfigParams) WithRegion(region string) *UpdateServerConfigParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the update server config params
func (o *UpdateServerConfigParams) SetRegion(region string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateServerConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param region
	if err := r.SetPathParam("region", o.Region); err != nil {
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
