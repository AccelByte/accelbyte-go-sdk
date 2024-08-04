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
	"github.com/go-openapi/swag"
)

// Get the enum in PublicGetMyDLCContentParams
const (
	PublicGetMyDLCContentEPICGAMESConstant = "EPICGAMES"
	PublicGetMyDLCContentOCULUSConstant    = "OCULUS"
	PublicGetMyDLCContentPSNConstant       = "PSN"
	PublicGetMyDLCContentSTEAMConstant     = "STEAM"
	PublicGetMyDLCContentXBOXConstant      = "XBOX"
)

// NewPublicGetMyDLCContentParams creates a new PublicGetMyDLCContentParams object
// with the default values initialized.
func NewPublicGetMyDLCContentParams() *PublicGetMyDLCContentParams {
	var ()
	return &PublicGetMyDLCContentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMyDLCContentParamsWithTimeout creates a new PublicGetMyDLCContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMyDLCContentParamsWithTimeout(timeout time.Duration) *PublicGetMyDLCContentParams {
	var ()
	return &PublicGetMyDLCContentParams{

		timeout: timeout,
	}
}

// NewPublicGetMyDLCContentParamsWithContext creates a new PublicGetMyDLCContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMyDLCContentParamsWithContext(ctx context.Context) *PublicGetMyDLCContentParams {
	var ()
	return &PublicGetMyDLCContentParams{

		Context: ctx,
	}
}

// NewPublicGetMyDLCContentParamsWithHTTPClient creates a new PublicGetMyDLCContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMyDLCContentParamsWithHTTPClient(client *http.Client) *PublicGetMyDLCContentParams {
	var ()
	return &PublicGetMyDLCContentParams{
		HTTPClient: client,
	}
}

/*PublicGetMyDLCContentParams contains all the parameters to send to the API endpoint
for the public get my dlc content operation typically these are written to a http.Request
*/
type PublicGetMyDLCContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*IncludeAllNamespaces*/
	IncludeAllNamespaces *bool
	/*Type*/
	Type string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) WithTimeout(timeout time.Duration) *PublicGetMyDLCContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) WithContext(ctx context.Context) *PublicGetMyDLCContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) WithHTTPClient(client *http.Client) *PublicGetMyDLCContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetMyDLCContentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithIncludeAllNamespaces adds the includeAllNamespaces to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) WithIncludeAllNamespaces(includeAllNamespaces *bool) *PublicGetMyDLCContentParams {
	o.SetIncludeAllNamespaces(includeAllNamespaces)
	return o
}

// SetIncludeAllNamespaces adds the includeAllNamespaces to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) SetIncludeAllNamespaces(includeAllNamespaces *bool) {
	o.IncludeAllNamespaces = includeAllNamespaces
}

// WithType adds the typeVar to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) WithType(typeVar string) *PublicGetMyDLCContentParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the public get my dlc content params
func (o *PublicGetMyDLCContentParams) SetType(typeVar string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMyDLCContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.IncludeAllNamespaces != nil {

		// query param includeAllNamespaces
		var qrIncludeAllNamespaces bool
		if o.IncludeAllNamespaces != nil {
			qrIncludeAllNamespaces = *o.IncludeAllNamespaces
		}
		qIncludeAllNamespaces := swag.FormatBool(qrIncludeAllNamespaces)
		if qIncludeAllNamespaces != "" {
			if err := r.SetQueryParam("includeAllNamespaces", qIncludeAllNamespaces); err != nil {
				return err
			}
		}

	}

	// query param type
	qrType := o.Type
	qType := qrType
	if qType != "" {
		if err := r.SetQueryParam("type", qType); err != nil {
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
