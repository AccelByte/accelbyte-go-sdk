// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewAdminGetAgeRestrictionStatusV2Params creates a new AdminGetAgeRestrictionStatusV2Params object
// with the default values initialized.
func NewAdminGetAgeRestrictionStatusV2Params() *AdminGetAgeRestrictionStatusV2Params {
	var ()
	return &AdminGetAgeRestrictionStatusV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetAgeRestrictionStatusV2ParamsWithTimeout creates a new AdminGetAgeRestrictionStatusV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetAgeRestrictionStatusV2ParamsWithTimeout(timeout time.Duration) *AdminGetAgeRestrictionStatusV2Params {
	var ()
	return &AdminGetAgeRestrictionStatusV2Params{

		timeout: timeout,
	}
}

// NewAdminGetAgeRestrictionStatusV2ParamsWithContext creates a new AdminGetAgeRestrictionStatusV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetAgeRestrictionStatusV2ParamsWithContext(ctx context.Context) *AdminGetAgeRestrictionStatusV2Params {
	var ()
	return &AdminGetAgeRestrictionStatusV2Params{

		Context: ctx,
	}
}

// NewAdminGetAgeRestrictionStatusV2ParamsWithHTTPClient creates a new AdminGetAgeRestrictionStatusV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetAgeRestrictionStatusV2ParamsWithHTTPClient(client *http.Client) *AdminGetAgeRestrictionStatusV2Params {
	var ()
	return &AdminGetAgeRestrictionStatusV2Params{
		HTTPClient: client,
	}
}

/*AdminGetAgeRestrictionStatusV2Params contains all the parameters to send to the API endpoint
for the admin get age restriction status v2 operation typically these are written to a http.Request
*/
type AdminGetAgeRestrictionStatusV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) WithTimeout(timeout time.Duration) *AdminGetAgeRestrictionStatusV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) WithContext(ctx context.Context) *AdminGetAgeRestrictionStatusV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) WithHTTPClient(client *http.Client) *AdminGetAgeRestrictionStatusV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetAgeRestrictionStatusV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) WithNamespace(namespace string) *AdminGetAgeRestrictionStatusV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get age restriction status v2 params
func (o *AdminGetAgeRestrictionStatusV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetAgeRestrictionStatusV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
