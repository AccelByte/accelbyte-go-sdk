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

// NewAdminUpdateAvailablePermissionsByModuleParams creates a new AdminUpdateAvailablePermissionsByModuleParams object
// with the default values initialized.
func NewAdminUpdateAvailablePermissionsByModuleParams() *AdminUpdateAvailablePermissionsByModuleParams {
	var ()
	return &AdminUpdateAvailablePermissionsByModuleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateAvailablePermissionsByModuleParamsWithTimeout creates a new AdminUpdateAvailablePermissionsByModuleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateAvailablePermissionsByModuleParamsWithTimeout(timeout time.Duration) *AdminUpdateAvailablePermissionsByModuleParams {
	var ()
	return &AdminUpdateAvailablePermissionsByModuleParams{

		timeout: timeout,
	}
}

// NewAdminUpdateAvailablePermissionsByModuleParamsWithContext creates a new AdminUpdateAvailablePermissionsByModuleParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateAvailablePermissionsByModuleParamsWithContext(ctx context.Context) *AdminUpdateAvailablePermissionsByModuleParams {
	var ()
	return &AdminUpdateAvailablePermissionsByModuleParams{

		Context: ctx,
	}
}

// NewAdminUpdateAvailablePermissionsByModuleParamsWithHTTPClient creates a new AdminUpdateAvailablePermissionsByModuleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateAvailablePermissionsByModuleParamsWithHTTPClient(client *http.Client) *AdminUpdateAvailablePermissionsByModuleParams {
	var ()
	return &AdminUpdateAvailablePermissionsByModuleParams{
		HTTPClient: client,
	}
}

/*AdminUpdateAvailablePermissionsByModuleParams contains all the parameters to send to the API endpoint
for the admin update available permissions by module operation typically these are written to a http.Request
*/
type AdminUpdateAvailablePermissionsByModuleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ClientmodelListUpsertModulesRequest
	/*ForceDelete
	  If this update include some delete action and to be deleted group or module is selected by any client, by default it will failed. If this force flag is true, it will success

	*/
	ForceDelete *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) WithTimeout(timeout time.Duration) *AdminUpdateAvailablePermissionsByModuleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) WithContext(ctx context.Context) *AdminUpdateAvailablePermissionsByModuleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) WithHTTPClient(client *http.Client) *AdminUpdateAvailablePermissionsByModuleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateAvailablePermissionsByModuleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) WithBody(body *iamclientmodels.ClientmodelListUpsertModulesRequest) *AdminUpdateAvailablePermissionsByModuleParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) SetBody(body *iamclientmodels.ClientmodelListUpsertModulesRequest) {
	o.Body = body
}

// WithForceDelete adds the forceDelete to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) WithForceDelete(forceDelete *bool) *AdminUpdateAvailablePermissionsByModuleParams {
	o.SetForceDelete(forceDelete)
	return o
}

// SetForceDelete adds the forceDelete to the admin update available permissions by module params
func (o *AdminUpdateAvailablePermissionsByModuleParams) SetForceDelete(forceDelete *bool) {
	o.ForceDelete = forceDelete
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateAvailablePermissionsByModuleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
