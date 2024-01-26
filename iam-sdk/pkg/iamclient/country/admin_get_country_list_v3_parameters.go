// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package country

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

// NewAdminGetCountryListV3Params creates a new AdminGetCountryListV3Params object
// with the default values initialized.
func NewAdminGetCountryListV3Params() *AdminGetCountryListV3Params {
	var (
		filterBlacklistDefault = bool(true)
	)
	return &AdminGetCountryListV3Params{
		FilterBlacklist: &filterBlacklistDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetCountryListV3ParamsWithTimeout creates a new AdminGetCountryListV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetCountryListV3ParamsWithTimeout(timeout time.Duration) *AdminGetCountryListV3Params {
	var (
		filterBlacklistDefault = bool(true)
	)
	return &AdminGetCountryListV3Params{
		FilterBlacklist: &filterBlacklistDefault,

		timeout: timeout,
	}
}

// NewAdminGetCountryListV3ParamsWithContext creates a new AdminGetCountryListV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetCountryListV3ParamsWithContext(ctx context.Context) *AdminGetCountryListV3Params {
	var (
		filterBlacklistDefault = bool(true)
	)
	return &AdminGetCountryListV3Params{
		FilterBlacklist: &filterBlacklistDefault,

		Context: ctx,
	}
}

// NewAdminGetCountryListV3ParamsWithHTTPClient creates a new AdminGetCountryListV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetCountryListV3ParamsWithHTTPClient(client *http.Client) *AdminGetCountryListV3Params {
	var (
		filterBlacklistDefault = bool(true)
	)
	return &AdminGetCountryListV3Params{
		FilterBlacklist: &filterBlacklistDefault,
		HTTPClient:      client,
	}
}

/*AdminGetCountryListV3Params contains all the parameters to send to the API endpoint
for the admin get country list v3 operation typically these are written to a http.Request
*/
type AdminGetCountryListV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*FilterBlacklist
	  filter black list

	*/
	FilterBlacklist *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) WithTimeout(timeout time.Duration) *AdminGetCountryListV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) WithContext(ctx context.Context) *AdminGetCountryListV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) WithHTTPClient(client *http.Client) *AdminGetCountryListV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetCountryListV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) WithNamespace(namespace string) *AdminGetCountryListV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithFilterBlacklist adds the filterBlacklist to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) WithFilterBlacklist(filterBlacklist *bool) *AdminGetCountryListV3Params {
	o.SetFilterBlacklist(filterBlacklist)
	return o
}

// SetFilterBlacklist adds the filterBlacklist to the admin get country list v3 params
func (o *AdminGetCountryListV3Params) SetFilterBlacklist(filterBlacklist *bool) {
	o.FilterBlacklist = filterBlacklist
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetCountryListV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.FilterBlacklist != nil {

		// query param filterBlacklist
		var qrFilterBlacklist bool
		if o.FilterBlacklist != nil {
			qrFilterBlacklist = *o.FilterBlacklist
		}
		qFilterBlacklist := swag.FormatBool(qrFilterBlacklist)
		if qFilterBlacklist != "" {
			if err := r.SetQueryParam("filterBlacklist", qFilterBlacklist); err != nil {
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
