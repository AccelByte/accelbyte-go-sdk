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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// Deprecated: 2025-07-16 - Use AdminUpdateProfileUpdateStrategyV3Field<EnumValue>Constant instead.
// Get the enum in AdminUpdateProfileUpdateStrategyV3Params
const (
	AdminUpdateProfileUpdateStrategyV3CountryConstant     = "country"
	AdminUpdateProfileUpdateStrategyV3DisplayNameConstant = "display_name"
	AdminUpdateProfileUpdateStrategyV3DobConstant         = "dob"
	AdminUpdateProfileUpdateStrategyV3UsernameConstant    = "username"
)

// Get the enum in AdminUpdateProfileUpdateStrategyV3Params
const (
	AdminUpdateProfileUpdateStrategyV3FieldCountryConstant     = "country"
	AdminUpdateProfileUpdateStrategyV3FieldDisplayNameConstant = "display_name"
	AdminUpdateProfileUpdateStrategyV3FieldDobConstant         = "dob"
	AdminUpdateProfileUpdateStrategyV3FieldUsernameConstant    = "username"
)

// NewAdminUpdateProfileUpdateStrategyV3Params creates a new AdminUpdateProfileUpdateStrategyV3Params object
// with the default values initialized.
func NewAdminUpdateProfileUpdateStrategyV3Params() *AdminUpdateProfileUpdateStrategyV3Params {
	var ()
	return &AdminUpdateProfileUpdateStrategyV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateProfileUpdateStrategyV3ParamsWithTimeout creates a new AdminUpdateProfileUpdateStrategyV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateProfileUpdateStrategyV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateProfileUpdateStrategyV3Params {
	var ()
	return &AdminUpdateProfileUpdateStrategyV3Params{

		timeout: timeout,
	}
}

// NewAdminUpdateProfileUpdateStrategyV3ParamsWithContext creates a new AdminUpdateProfileUpdateStrategyV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateProfileUpdateStrategyV3ParamsWithContext(ctx context.Context) *AdminUpdateProfileUpdateStrategyV3Params {
	var ()
	return &AdminUpdateProfileUpdateStrategyV3Params{

		Context: ctx,
	}
}

// NewAdminUpdateProfileUpdateStrategyV3ParamsWithHTTPClient creates a new AdminUpdateProfileUpdateStrategyV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateProfileUpdateStrategyV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateProfileUpdateStrategyV3Params {
	var ()
	return &AdminUpdateProfileUpdateStrategyV3Params{
		HTTPClient: client,
	}
}

/*AdminUpdateProfileUpdateStrategyV3Params contains all the parameters to send to the API endpoint
for the admin update profile update strategy v3 operation typically these are written to a http.Request
*/
type AdminUpdateProfileUpdateStrategyV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUpdateProfileUpdateStrategyConfigRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Field
	  Target field

	*/
	Field string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) WithTimeout(timeout time.Duration) *AdminUpdateProfileUpdateStrategyV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) WithContext(ctx context.Context) *AdminUpdateProfileUpdateStrategyV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) WithHTTPClient(client *http.Client) *AdminUpdateProfileUpdateStrategyV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateProfileUpdateStrategyV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) WithBody(body *iamclientmodels.ModelUpdateProfileUpdateStrategyConfigRequest) *AdminUpdateProfileUpdateStrategyV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) SetBody(body *iamclientmodels.ModelUpdateProfileUpdateStrategyConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) WithNamespace(namespace string) *AdminUpdateProfileUpdateStrategyV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithField adds the field to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) WithField(field string) *AdminUpdateProfileUpdateStrategyV3Params {
	o.SetField(field)
	return o
}

// SetField adds the field to the admin update profile update strategy v3 params
func (o *AdminUpdateProfileUpdateStrategyV3Params) SetField(field string) {
	o.Field = field
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateProfileUpdateStrategyV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param field
	qrField := o.Field
	qField := qrField
	if qField != "" {
		if err := r.SetQueryParam("field", qField); err != nil {
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
