// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package devices_v4

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminUpdateDeviceBanV4Params creates a new AdminUpdateDeviceBanV4Params object
// with the default values initialized.
func NewAdminUpdateDeviceBanV4Params() *AdminUpdateDeviceBanV4Params {
	var ()
	return &AdminUpdateDeviceBanV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateDeviceBanV4ParamsWithTimeout creates a new AdminUpdateDeviceBanV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateDeviceBanV4ParamsWithTimeout(timeout time.Duration) *AdminUpdateDeviceBanV4Params {
	var ()
	return &AdminUpdateDeviceBanV4Params{

		timeout: timeout,
	}
}

// NewAdminUpdateDeviceBanV4ParamsWithContext creates a new AdminUpdateDeviceBanV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateDeviceBanV4ParamsWithContext(ctx context.Context) *AdminUpdateDeviceBanV4Params {
	var ()
	return &AdminUpdateDeviceBanV4Params{

		Context: ctx,
	}
}

// NewAdminUpdateDeviceBanV4ParamsWithHTTPClient creates a new AdminUpdateDeviceBanV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateDeviceBanV4ParamsWithHTTPClient(client *http.Client) *AdminUpdateDeviceBanV4Params {
	var ()
	return &AdminUpdateDeviceBanV4Params{
		HTTPClient: client,
	}
}

/*AdminUpdateDeviceBanV4Params contains all the parameters to send to the API endpoint
for the admin update device ban v4 operation typically these are written to a http.Request
*/
type AdminUpdateDeviceBanV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelDeviceBanUpdateRequestV4
	/*BanID
	  Ban ID, should follow UUID version 4 without hyphen

	*/
	BanID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) WithTimeout(timeout time.Duration) *AdminUpdateDeviceBanV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) WithContext(ctx context.Context) *AdminUpdateDeviceBanV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) WithHTTPClient(client *http.Client) *AdminUpdateDeviceBanV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateDeviceBanV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) WithBody(body *iamclientmodels.ModelDeviceBanUpdateRequestV4) *AdminUpdateDeviceBanV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) SetBody(body *iamclientmodels.ModelDeviceBanUpdateRequestV4) {
	o.Body = body
}

// WithBanID adds the banID to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) WithBanID(banID string) *AdminUpdateDeviceBanV4Params {
	o.SetBanID(banID)
	return o
}

// SetBanID adds the banId to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) SetBanID(banID string) {
	o.BanID = banID
}

// WithNamespace adds the namespace to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) WithNamespace(namespace string) *AdminUpdateDeviceBanV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update device ban v4 params
func (o *AdminUpdateDeviceBanV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateDeviceBanV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param banId
	if err := r.SetPathParam("banId", o.BanID); err != nil {
		return err
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
