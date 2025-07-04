// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package play_feature_flag

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

// NewAdminGetPlayFeatureFlagParams creates a new AdminGetPlayFeatureFlagParams object
// with the default values initialized.
func NewAdminGetPlayFeatureFlagParams() *AdminGetPlayFeatureFlagParams {
	var ()
	return &AdminGetPlayFeatureFlagParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPlayFeatureFlagParamsWithTimeout creates a new AdminGetPlayFeatureFlagParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPlayFeatureFlagParamsWithTimeout(timeout time.Duration) *AdminGetPlayFeatureFlagParams {
	var ()
	return &AdminGetPlayFeatureFlagParams{

		timeout: timeout,
	}
}

// NewAdminGetPlayFeatureFlagParamsWithContext creates a new AdminGetPlayFeatureFlagParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPlayFeatureFlagParamsWithContext(ctx context.Context) *AdminGetPlayFeatureFlagParams {
	var ()
	return &AdminGetPlayFeatureFlagParams{

		Context: ctx,
	}
}

// NewAdminGetPlayFeatureFlagParamsWithHTTPClient creates a new AdminGetPlayFeatureFlagParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPlayFeatureFlagParamsWithHTTPClient(client *http.Client) *AdminGetPlayFeatureFlagParams {
	var ()
	return &AdminGetPlayFeatureFlagParams{
		HTTPClient: client,
	}
}

/*AdminGetPlayFeatureFlagParams contains all the parameters to send to the API endpoint
for the admin get play feature flag operation typically these are written to a http.Request
*/
type AdminGetPlayFeatureFlagParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) WithTimeout(timeout time.Duration) *AdminGetPlayFeatureFlagParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) WithContext(ctx context.Context) *AdminGetPlayFeatureFlagParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) WithHTTPClient(client *http.Client) *AdminGetPlayFeatureFlagParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetPlayFeatureFlagParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) WithNamespace(namespace string) *AdminGetPlayFeatureFlagParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get play feature flag params
func (o *AdminGetPlayFeatureFlagParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPlayFeatureFlagParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
