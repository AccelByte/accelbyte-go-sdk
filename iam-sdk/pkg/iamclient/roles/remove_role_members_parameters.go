// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// NewRemoveRoleMembersParams creates a new RemoveRoleMembersParams object
// with the default values initialized.
func NewRemoveRoleMembersParams() *RemoveRoleMembersParams {
	var ()
	return &RemoveRoleMembersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRemoveRoleMembersParamsWithTimeout creates a new RemoveRoleMembersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRemoveRoleMembersParamsWithTimeout(timeout time.Duration) *RemoveRoleMembersParams {
	var ()
	return &RemoveRoleMembersParams{

		timeout: timeout,
	}
}

// NewRemoveRoleMembersParamsWithContext creates a new RemoveRoleMembersParams object
// with the default values initialized, and the ability to set a context for a request
func NewRemoveRoleMembersParamsWithContext(ctx context.Context) *RemoveRoleMembersParams {
	var ()
	return &RemoveRoleMembersParams{

		Context: ctx,
	}
}

// NewRemoveRoleMembersParamsWithHTTPClient creates a new RemoveRoleMembersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRemoveRoleMembersParamsWithHTTPClient(client *http.Client) *RemoveRoleMembersParams {
	var ()
	return &RemoveRoleMembersParams{
		HTTPClient: client,
	}
}

/*RemoveRoleMembersParams contains all the parameters to send to the API endpoint
for the remove role members operation typically these are written to a http.Request
*/
type RemoveRoleMembersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRoleMembersRequest
	/*RoleID
	  Role id

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the remove role members params
func (o *RemoveRoleMembersParams) WithTimeout(timeout time.Duration) *RemoveRoleMembersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the remove role members params
func (o *RemoveRoleMembersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the remove role members params
func (o *RemoveRoleMembersParams) WithContext(ctx context.Context) *RemoveRoleMembersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the remove role members params
func (o *RemoveRoleMembersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the remove role members params
func (o *RemoveRoleMembersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the remove role members params
func (o *RemoveRoleMembersParams) WithHTTPClient(client *http.Client) *RemoveRoleMembersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the remove role members params
func (o *RemoveRoleMembersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the remove role members params
func (o *RemoveRoleMembersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RemoveRoleMembersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the remove role members params
func (o *RemoveRoleMembersParams) WithBody(body *iamclientmodels.ModelRoleMembersRequest) *RemoveRoleMembersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the remove role members params
func (o *RemoveRoleMembersParams) SetBody(body *iamclientmodels.ModelRoleMembersRequest) {
	o.Body = body
}

// WithRoleID adds the roleID to the remove role members params
func (o *RemoveRoleMembersParams) WithRoleID(roleID string) *RemoveRoleMembersParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the remove role members params
func (o *RemoveRoleMembersParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *RemoveRoleMembersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param roleId
	if err := r.SetPathParam("roleId", o.RoleID); err != nil {
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
