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
)

// Deprecated: 2025-07-16 - Use GeDLCDurableRewardShortMapDLCType<EnumValue>Constant instead.
// Get the enum in GeDLCDurableRewardShortMapParams
const (
	GeDLCDurableRewardShortMapEPICGAMESConstant = "EPICGAMES"
	GeDLCDurableRewardShortMapOCULUSConstant    = "OCULUS"
	GeDLCDurableRewardShortMapPSNConstant       = "PSN"
	GeDLCDurableRewardShortMapSTEAMConstant     = "STEAM"
	GeDLCDurableRewardShortMapXBOXConstant      = "XBOX"
)

// Get the enum in GeDLCDurableRewardShortMapParams
const (
	GeDLCDurableRewardShortMapDLCTypeEPICGAMESConstant = "EPICGAMES"
	GeDLCDurableRewardShortMapDLCTypeOCULUSConstant    = "OCULUS"
	GeDLCDurableRewardShortMapDLCTypePSNConstant       = "PSN"
	GeDLCDurableRewardShortMapDLCTypeSTEAMConstant     = "STEAM"
	GeDLCDurableRewardShortMapDLCTypeXBOXConstant      = "XBOX"
)

// NewGeDLCDurableRewardShortMapParams creates a new GeDLCDurableRewardShortMapParams object
// with the default values initialized.
func NewGeDLCDurableRewardShortMapParams() *GeDLCDurableRewardShortMapParams {
	var ()
	return &GeDLCDurableRewardShortMapParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGeDLCDurableRewardShortMapParamsWithTimeout creates a new GeDLCDurableRewardShortMapParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGeDLCDurableRewardShortMapParamsWithTimeout(timeout time.Duration) *GeDLCDurableRewardShortMapParams {
	var ()
	return &GeDLCDurableRewardShortMapParams{

		timeout: timeout,
	}
}

// NewGeDLCDurableRewardShortMapParamsWithContext creates a new GeDLCDurableRewardShortMapParams object
// with the default values initialized, and the ability to set a context for a request
func NewGeDLCDurableRewardShortMapParamsWithContext(ctx context.Context) *GeDLCDurableRewardShortMapParams {
	var ()
	return &GeDLCDurableRewardShortMapParams{

		Context: ctx,
	}
}

// NewGeDLCDurableRewardShortMapParamsWithHTTPClient creates a new GeDLCDurableRewardShortMapParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGeDLCDurableRewardShortMapParamsWithHTTPClient(client *http.Client) *GeDLCDurableRewardShortMapParams {
	var ()
	return &GeDLCDurableRewardShortMapParams{
		HTTPClient: client,
	}
}

/*GeDLCDurableRewardShortMapParams contains all the parameters to send to the API endpoint
for the ge dlc durable reward short map operation typically these are written to a http.Request
*/
type GeDLCDurableRewardShortMapParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*DLCType*/
	DLCType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) WithTimeout(timeout time.Duration) *GeDLCDurableRewardShortMapParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) WithContext(ctx context.Context) *GeDLCDurableRewardShortMapParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) WithHTTPClient(client *http.Client) *GeDLCDurableRewardShortMapParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GeDLCDurableRewardShortMapParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) WithNamespace(namespace string) *GeDLCDurableRewardShortMapParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithDLCType adds the dLCType to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) WithDLCType(dLCType string) *GeDLCDurableRewardShortMapParams {
	o.SetDLCType(dLCType)
	return o
}

// SetDLCType adds the dlcType to the ge dlc durable reward short map params
func (o *GeDLCDurableRewardShortMapParams) SetDLCType(dLCType string) {
	o.DLCType = dLCType
}

// WriteToRequest writes these params to a swagger request
func (o *GeDLCDurableRewardShortMapParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param dlcType
	qrDLCType := o.DLCType
	qDLCType := qrDLCType
	if qDLCType != "" {
		if err := r.SetQueryParam("dlcType", qDLCType); err != nil {
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
