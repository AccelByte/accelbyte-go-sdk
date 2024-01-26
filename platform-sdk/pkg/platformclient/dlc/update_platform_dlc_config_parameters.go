// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdatePlatformDLCConfigParams creates a new UpdatePlatformDLCConfigParams object
// with the default values initialized.
func NewUpdatePlatformDLCConfigParams() *UpdatePlatformDLCConfigParams {
	var ()
	return &UpdatePlatformDLCConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePlatformDLCConfigParamsWithTimeout creates a new UpdatePlatformDLCConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePlatformDLCConfigParamsWithTimeout(timeout time.Duration) *UpdatePlatformDLCConfigParams {
	var ()
	return &UpdatePlatformDLCConfigParams{

		timeout: timeout,
	}
}

// NewUpdatePlatformDLCConfigParamsWithContext creates a new UpdatePlatformDLCConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePlatformDLCConfigParamsWithContext(ctx context.Context) *UpdatePlatformDLCConfigParams {
	var ()
	return &UpdatePlatformDLCConfigParams{

		Context: ctx,
	}
}

// NewUpdatePlatformDLCConfigParamsWithHTTPClient creates a new UpdatePlatformDLCConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePlatformDLCConfigParamsWithHTTPClient(client *http.Client) *UpdatePlatformDLCConfigParams {
	var ()
	return &UpdatePlatformDLCConfigParams{
		HTTPClient: client,
	}
}

/*UpdatePlatformDLCConfigParams contains all the parameters to send to the API endpoint
for the update platform dlc config operation typically these are written to a http.Request
*/
type UpdatePlatformDLCConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PlatformDLCConfigUpdate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) WithTimeout(timeout time.Duration) *UpdatePlatformDLCConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) WithContext(ctx context.Context) *UpdatePlatformDLCConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) WithHTTPClient(client *http.Client) *UpdatePlatformDLCConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePlatformDLCConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) WithBody(body *platformclientmodels.PlatformDLCConfigUpdate) *UpdatePlatformDLCConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) SetBody(body *platformclientmodels.PlatformDLCConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) WithNamespace(namespace string) *UpdatePlatformDLCConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update platform dlc config params
func (o *UpdatePlatformDLCConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePlatformDLCConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
