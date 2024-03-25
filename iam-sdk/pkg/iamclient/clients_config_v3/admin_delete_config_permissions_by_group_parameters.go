// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients_config_v3

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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminDeleteConfigPermissionsByGroupParams creates a new AdminDeleteConfigPermissionsByGroupParams object
// with the default values initialized.
func NewAdminDeleteConfigPermissionsByGroupParams() *AdminDeleteConfigPermissionsByGroupParams {
	var ()
	return &AdminDeleteConfigPermissionsByGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteConfigPermissionsByGroupParamsWithTimeout creates a new AdminDeleteConfigPermissionsByGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteConfigPermissionsByGroupParamsWithTimeout(timeout time.Duration) *AdminDeleteConfigPermissionsByGroupParams {
	var ()
	return &AdminDeleteConfigPermissionsByGroupParams{

		timeout: timeout,
	}
}

// NewAdminDeleteConfigPermissionsByGroupParamsWithContext creates a new AdminDeleteConfigPermissionsByGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteConfigPermissionsByGroupParamsWithContext(ctx context.Context) *AdminDeleteConfigPermissionsByGroupParams {
	var ()
	return &AdminDeleteConfigPermissionsByGroupParams{

		Context: ctx,
	}
}

// NewAdminDeleteConfigPermissionsByGroupParamsWithHTTPClient creates a new AdminDeleteConfigPermissionsByGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteConfigPermissionsByGroupParamsWithHTTPClient(client *http.Client) *AdminDeleteConfigPermissionsByGroupParams {
	var ()
	return &AdminDeleteConfigPermissionsByGroupParams{
		HTTPClient: client,
	}
}

/*AdminDeleteConfigPermissionsByGroupParams contains all the parameters to send to the API endpoint
for the admin delete config permissions by group operation typically these are written to a http.Request
*/
type AdminDeleteConfigPermissionsByGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ClientmodelPermissionSetDeleteGroupRequest
	/*ForceDelete
	  If target deleted group or module is selected by any client, by default it will failed. If this force flag is true, it will success

	*/
	ForceDelete *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) WithTimeout(timeout time.Duration) *AdminDeleteConfigPermissionsByGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) WithContext(ctx context.Context) *AdminDeleteConfigPermissionsByGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) WithHTTPClient(client *http.Client) *AdminDeleteConfigPermissionsByGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteConfigPermissionsByGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) WithBody(body *iamclientmodels.ClientmodelPermissionSetDeleteGroupRequest) *AdminDeleteConfigPermissionsByGroupParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) SetBody(body *iamclientmodels.ClientmodelPermissionSetDeleteGroupRequest) {
	o.Body = body
}

// WithForceDelete adds the forceDelete to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) WithForceDelete(forceDelete *bool) *AdminDeleteConfigPermissionsByGroupParams {
	o.SetForceDelete(forceDelete)
	return o
}

// SetForceDelete adds the forceDelete to the admin delete config permissions by group params
func (o *AdminDeleteConfigPermissionsByGroupParams) SetForceDelete(forceDelete *bool) {
	o.ForceDelete = forceDelete
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteConfigPermissionsByGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	if o.ForceDelete != nil {

		// query param forceDelete
		var qrForceDelete bool
		if o.ForceDelete != nil {
			qrForceDelete = *o.ForceDelete
		}
		qForceDelete := swag.FormatBool(qrForceDelete)
		if qForceDelete != "" {
			if err := r.SetQueryParam("forceDelete", qForceDelete); err != nil {
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
