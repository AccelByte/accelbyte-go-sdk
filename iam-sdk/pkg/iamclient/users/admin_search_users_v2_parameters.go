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
	"github.com/go-openapi/swag"
)

// NewAdminSearchUsersV2Params creates a new AdminSearchUsersV2Params object
// with the default values initialized.
func NewAdminSearchUsersV2Params() *AdminSearchUsersV2Params {
	var ()
	return &AdminSearchUsersV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSearchUsersV2ParamsWithTimeout creates a new AdminSearchUsersV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSearchUsersV2ParamsWithTimeout(timeout time.Duration) *AdminSearchUsersV2Params {
	var ()
	return &AdminSearchUsersV2Params{

		timeout: timeout,
	}
}

// NewAdminSearchUsersV2ParamsWithContext creates a new AdminSearchUsersV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSearchUsersV2ParamsWithContext(ctx context.Context) *AdminSearchUsersV2Params {
	var ()
	return &AdminSearchUsersV2Params{

		Context: ctx,
	}
}

// NewAdminSearchUsersV2ParamsWithHTTPClient creates a new AdminSearchUsersV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSearchUsersV2ParamsWithHTTPClient(client *http.Client) *AdminSearchUsersV2Params {
	var ()
	return &AdminSearchUsersV2Params{
		HTTPClient: client,
	}
}

/*AdminSearchUsersV2Params contains all the parameters to send to the API endpoint
for the admin search users v2 operation typically these are written to a http.Request
*/
type AdminSearchUsersV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*After
	  The cursor that points to ID of first item in for the next page

	*/
	After *string
	/*Before
	  The cursor that points to ID of last item in for the previous page

	*/
	Before *string
	/*DisplayName
	  display name

	*/
	DisplayName *string
	/*Limit
	  the number of data retieved in a page

	*/
	Limit *int64
	/*LoginID
	  login ID

	*/
	LoginID *string
	/*PlatformUserID
	  platform user ID

	*/
	PlatformUserID *string
	/*RoleID
	  role ID

	*/
	RoleID *string
	/*UserID
	  user ID

	*/
	UserID *string
	/*PlatformID
	  platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithTimeout(timeout time.Duration) *AdminSearchUsersV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithContext(ctx context.Context) *AdminSearchUsersV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithHTTPClient(client *http.Client) *AdminSearchUsersV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSearchUsersV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithNamespace(namespace string) *AdminSearchUsersV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAfter adds the after to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithAfter(after *string) *AdminSearchUsersV2Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithBefore(before *string) *AdminSearchUsersV2Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetBefore(before *string) {
	o.Before = before
}

// WithDisplayName adds the displayName to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithDisplayName(displayName *string) *AdminSearchUsersV2Params {
	o.SetDisplayName(displayName)
	return o
}

// SetDisplayName adds the displayName to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetDisplayName(displayName *string) {
	o.DisplayName = displayName
}

// WithLimit adds the limit to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithLimit(limit *int64) *AdminSearchUsersV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithLoginID adds the loginID to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithLoginID(loginID *string) *AdminSearchUsersV2Params {
	o.SetLoginID(loginID)
	return o
}

// SetLoginID adds the loginId to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetLoginID(loginID *string) {
	o.LoginID = loginID
}

// WithPlatformUserID adds the platformUserID to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithPlatformUserID(platformUserID *string) *AdminSearchUsersV2Params {
	o.SetPlatformUserID(platformUserID)
	return o
}

// SetPlatformUserID adds the platformUserId to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetPlatformUserID(platformUserID *string) {
	o.PlatformUserID = platformUserID
}

// WithRoleID adds the roleID to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithRoleID(roleID *string) *AdminSearchUsersV2Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetRoleID(roleID *string) {
	o.RoleID = roleID
}

// WithUserID adds the userID to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithUserID(userID *string) *AdminSearchUsersV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetUserID(userID *string) {
	o.UserID = userID
}

// WithPlatformID adds the platformID to the admin search users v2 params
func (o *AdminSearchUsersV2Params) WithPlatformID(platformID string) *AdminSearchUsersV2Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin search users v2 params
func (o *AdminSearchUsersV2Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSearchUsersV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
				return err
			}
		}

	}

	if o.DisplayName != nil {

		// query param displayName
		var qrDisplayName string
		if o.DisplayName != nil {
			qrDisplayName = *o.DisplayName
		}
		qDisplayName := qrDisplayName
		if qDisplayName != "" {
			if err := r.SetQueryParam("displayName", qDisplayName); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.LoginID != nil {

		// query param loginId
		var qrLoginID string
		if o.LoginID != nil {
			qrLoginID = *o.LoginID
		}
		qLoginID := qrLoginID
		if qLoginID != "" {
			if err := r.SetQueryParam("loginId", qLoginID); err != nil {
				return err
			}
		}

	}

	if o.PlatformUserID != nil {

		// query param platformUserId
		var qrPlatformUserID string
		if o.PlatformUserID != nil {
			qrPlatformUserID = *o.PlatformUserID
		}
		qPlatformUserID := qrPlatformUserID
		if qPlatformUserID != "" {
			if err := r.SetQueryParam("platformUserId", qPlatformUserID); err != nil {
				return err
			}
		}

	}

	if o.RoleID != nil {

		// query param roleId
		var qrRoleID string
		if o.RoleID != nil {
			qrRoleID = *o.RoleID
		}
		qRoleID := qrRoleID
		if qRoleID != "" {
			if err := r.SetQueryParam("roleId", qRoleID); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
				return err
			}
		}

	}

	// query param platformId
	qrPlatformID := o.PlatformID
	qPlatformID := qrPlatformID
	if qPlatformID != "" {
		if err := r.SetQueryParam("platformId", qPlatformID); err != nil {
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
