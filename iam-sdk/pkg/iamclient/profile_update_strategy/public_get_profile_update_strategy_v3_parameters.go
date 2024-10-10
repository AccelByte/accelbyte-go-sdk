// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profile_update_strategy

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

// Get the enum in PublicGetProfileUpdateStrategyV3Params
const (
	PublicGetProfileUpdateStrategyV3CountryConstant     = "country"
	PublicGetProfileUpdateStrategyV3DisplayNameConstant = "display_name"
	PublicGetProfileUpdateStrategyV3DobConstant         = "dob"
	PublicGetProfileUpdateStrategyV3UsernameConstant    = "username"
)

// NewPublicGetProfileUpdateStrategyV3Params creates a new PublicGetProfileUpdateStrategyV3Params object
// with the default values initialized.
func NewPublicGetProfileUpdateStrategyV3Params() *PublicGetProfileUpdateStrategyV3Params {
	var ()
	return &PublicGetProfileUpdateStrategyV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetProfileUpdateStrategyV3ParamsWithTimeout creates a new PublicGetProfileUpdateStrategyV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetProfileUpdateStrategyV3ParamsWithTimeout(timeout time.Duration) *PublicGetProfileUpdateStrategyV3Params {
	var ()
	return &PublicGetProfileUpdateStrategyV3Params{

		timeout: timeout,
	}
}

// NewPublicGetProfileUpdateStrategyV3ParamsWithContext creates a new PublicGetProfileUpdateStrategyV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetProfileUpdateStrategyV3ParamsWithContext(ctx context.Context) *PublicGetProfileUpdateStrategyV3Params {
	var ()
	return &PublicGetProfileUpdateStrategyV3Params{

		Context: ctx,
	}
}

// NewPublicGetProfileUpdateStrategyV3ParamsWithHTTPClient creates a new PublicGetProfileUpdateStrategyV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetProfileUpdateStrategyV3ParamsWithHTTPClient(client *http.Client) *PublicGetProfileUpdateStrategyV3Params {
	var ()
	return &PublicGetProfileUpdateStrategyV3Params{
		HTTPClient: client,
	}
}

/*PublicGetProfileUpdateStrategyV3Params contains all the parameters to send to the API endpoint
for the public get profile update strategy v3 operation typically these are written to a http.Request
*/
type PublicGetProfileUpdateStrategyV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Field
	  Target field

	*/
	Field *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) WithTimeout(timeout time.Duration) *PublicGetProfileUpdateStrategyV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) WithContext(ctx context.Context) *PublicGetProfileUpdateStrategyV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) WithHTTPClient(client *http.Client) *PublicGetProfileUpdateStrategyV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetProfileUpdateStrategyV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) WithNamespace(namespace string) *PublicGetProfileUpdateStrategyV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithField adds the field to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) WithField(field *string) *PublicGetProfileUpdateStrategyV3Params {
	o.SetField(field)
	return o
}

// SetField adds the field to the public get profile update strategy v3 params
func (o *PublicGetProfileUpdateStrategyV3Params) SetField(field *string) {
	o.Field = field
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetProfileUpdateStrategyV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Field != nil {

		// query param field
		var qrField string
		if o.Field != nil {
			qrField = *o.Field
		}
		qField := qrField
		if qField != "" {
			if err := r.SetQueryParam("field", qField); err != nil {
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
